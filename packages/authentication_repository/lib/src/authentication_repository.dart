import 'dart:async';
import 'dart:convert';

import 'package:biometric_storage/biometric_storage.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}

final Logger _log = Logger();

class Session {
  const Session(this.user, this.id);

  final String user;
  final String id;
}

class Credentials {
  const Credentials(this.user, this.password);

  Credentials.fromJson(Map<String, dynamic> json)
      : user = json['user'] as String,
        password = json['password'] as String;

  final String user;
  final String password;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user'] = user;
    data['password'] = password;
    return data;
  }
}

class AuthenticationRepository {
  AuthenticationRepository({required this.depotRepository});

  final DepotRepository depotRepository;
  final _controller = StreamController<AuthenticationStatus>();
  Session? _session;
  late BiometricStorageFile _credentialStorage;
  late BiometricStorageFile _hasCredentials;
  late SharedPreferences _prefs;
  bool? _supportsAuthentication;

  // encrypt credentials with key saved in prefs, so that they become unusable
  // after app uninstall (iOS only)
  static const _prefsKey = "SHARED_PREFERENCE_KEY";
  static const _prefsIv = "SHARED_PREFERENCE_INITIALIZATION_VECTOR";

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<bool> supportsBiometricAuthentication() async {
    final authenticate = await BiometricStorage().canAuthenticate();
    final supportsAuthentication =
        authenticate == CanAuthenticateResponse.success ||
            authenticate == CanAuthenticateResponse.statusUnknown;

    _supportsAuthentication = supportsAuthentication;
    _log.d('Biometric support: $_supportsAuthentication/$authenticate');
    return supportsAuthentication;
  }

  Future<bool> hasSavedCredentials() async {
    await _initStorage();
    final hasSavedCredentials = (await _hasCredentials.read()) == 'true';
    final hasDecryptionKey =
        _prefs.containsKey(_prefsKey) && _prefs.containsKey(_prefsIv);

    if (hasSavedCredentials && !hasDecryptionKey) {
      // this will happen on iOS after a uninstall and a reinstall
      _log.d(
          'Old credentials found. Discard them since we cannot decrypt them');

      await _credentialStorage.delete();
      await _hasCredentials.delete();
    }

    _log.d('checking saved credentials: $hasSavedCredentials');
    return hasSavedCredentials && hasDecryptionKey;
  }

  Future<void> loginWithBiometrics() async {
    final credentials = await _getSavedCredentials();
    if (credentials == null) {
      throw NoSavedCredentialException();
    }
    return logIn(
      username: credentials.user,
      password: credentials.password,
      rememberMe: false,
    );
  }

  Future<void> logIn({
    required String username,
    required String password,
    required bool rememberMe,
  }) async {
    late SessionResponse response;
    try {
      response = await depotRepository.login(username, password);
    } on DioError catch (ex) {
      if (ex.response?.statusCode == 400) {
        throw AuthenticationFailedException();
      }
      rethrow;
    }

    if (response.isError()) {
      _log.d('Login request failed');
      throw AuthenticationFailedException();
    }

    final session = Session(username, response.sessionId);
    if (!await hasSavedCredentials() &&
        (_supportsAuthentication ?? false) &&
        rememberMe) {
      _log.d('Writing session to storage...');
      await _initStorage();
      try {
        await _saveCredentials(username, password);
      } on AuthException catch (ex) {
        if (ex.code == AuthExceptionCode.canceled ||
            ex.code == AuthExceptionCode.userCanceled) {
          throw BiometricsCanceledException();
        }
        _log.d(ex);
        rethrow;
      }
    }
    _session = session;
    _controller.add(AuthenticationStatus.authenticated);
  }

  void endSession() {
    final s = _session;
    if (s != null) {
      _session = null;
      depotRepository.logoff(s.user, s.id);
    }
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  Future<void> logOut() async {
    await _credentialStorage.delete();
    await _hasCredentials.write(false.toString());
    endSession();
  }

  void dispose() {
    final s = _session;
    if (s != null) {
      depotRepository.logoff(s.user, s.id);
      _session = null;
    }
    _controller.close();
  }

  Session? getSession() {
    return _session;
  }

  Future<void> _initStorage() async {
    _credentialStorage = await BiometricStorage()
        .getStorage('credentials', options: StorageFileInitOptions());
    _hasCredentials = await BiometricStorage().getStorage('hasCredentials',
        options: StorageFileInitOptions(authenticationRequired: false));
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> _saveCredentials(String username, String password) async {
    var keyBase64 = _prefs.getString(_prefsKey);
    if (keyBase64 == null) {
      keyBase64 = Key.fromSecureRandom(32).base64;
      await _prefs.setString(_prefsKey, keyBase64);
    }
    final key = Key.fromBase64(keyBase64);
    final iv = IV.fromSecureRandom(16);
    await _prefs.setString(_prefsIv, iv.base64);

    final payload = jsonEncode(Credentials(username, password).toJson());
    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(payload, iv: iv).base64;

    await _credentialStorage.write(encrypted);
    await _hasCredentials.write(true.toString());
  }

  Future<Credentials?> _getSavedCredentials() async {
    final keyBase64 = _prefs.getString(_prefsKey);
    final ivBase64 = _prefs.getString(_prefsIv);

    if (keyBase64 == null || ivBase64 == null) {
      return null;
    }
    final key = Key.fromBase64(keyBase64);
    final iv = IV.fromBase64(ivBase64);

    final encryptedCredentials = await _credentialStorage.read();
    if (encryptedCredentials == null) {
      // this can happen, if the biometric profiles have changed
      // and previously stored entries get invalidated
      await _credentialStorage.delete();
      await _hasCredentials.delete();
      return null;
    }

    final encrypter = Encrypter(AES(key));
    final credentials = encrypter.decrypt64(encryptedCredentials, iv: iv);

    try {
      return Credentials.fromJson(
          jsonDecode(credentials) as Map<String, dynamic>);
    } catch (ex) {
      await _credentialStorage.delete();
    }
    return null;
  }
}

class AuthenticationException implements Exception {}

class NoSavedCredentialException extends AuthenticationException {}

class AuthenticationFailedException extends AuthenticationException {}

class BiometricsCanceledException extends AuthenticationException {}
