import 'dart:convert';

import 'package:certificate_pinning_httpclient/certificate_pinning_httpclient.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'models/flatex_types.dart';

final _staticDio = initDio();

Dio initDio() {
  final options = BaseOptions(
    baseUrl: 'https://flatex.guidants-trading.de/proxy',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
  );
  final dio = Dio(options);
  dio.httpClientAdapter = IOHttpClientAdapter(
      onHttpClientCreate: (_) => CertificatePinningHttpClient(
          ["7FgcSGOcbJZEbA+L0Z4t0arW+6dPj6k5HUWabgIHRUU="]));
  return dio;
}

class DepotRepository {
  late final dio = _staticDio;

  //
  // DepotRepository() {}
  Future<SessionResponse> login(String userId, String password) async {
    return await dio.post('/', data: {
      'action': 'processLogon',
      'args': {
        'principal': userId,
        'credential': {
          'credentialName': 'PIN',
          'credential': sha256HashOf(password)
        }
      },
      'provider': 'flatex_at',
      'platform': 'android'
    }).then((value) {
      return SessionResponseMapper.fromMap(value.data as Map<String, dynamic>);
    });
  }

  Future<LogoffResponse> logoff(String userId, String sessionId) async {
    return await dio.post('/', data: {
      'action': 'processLogoff',
      'args': {
        'session': {'sessionId': sessionId}
      },
      'provider': 'flatex_at',
      'platform': 'android'
    }).then((value) {
      return LogoffResponseMapper.fromMap(value.data as Map<String, dynamic>);
    });
  }

  Future<AccountResponse> getAccount(String userId, String sessionId) async {
    return await dio.post('/', data: {
      'action': 'processPreparation',
      'args': {
        'session': {'sessionId': sessionId},
        'identification': {'customerId': userId}
      },
      'provider': 'flatex_at',
      'platform': 'android'
    }).then((value) =>
        AccountResponseMapper.fromMap(value.data as Map<String, dynamic>));
  }

  Future<PortfolioResponse> getPortfolio(
      String userId, String sessionId, AccountInfo accountInfo) async {
    return await dio.post('/', data: {
      'action': 'processPortfolio',
      'args': {
        'session': {'sessionId': sessionId},
        'identification': {'customerId': userId},
        'depot': {
          'number': accountInfo.number,
          'bank': accountInfo.bank.toMap()
        },
        'synchron': true
      },
      'provider': 'flatex_at',
      'platform': 'android'
    }).then((value) =>
        PortfolioResponseMapper.fromMap(value.data as Map<String, dynamic>));
  }

  Future<BalanceResponse> getBalance(
      String userId, String sessionId, AccountInfo accountInfo) async {
    return await dio.post('/', data: {
      'action': 'processBalance',
      'args': {
        'session': {'sessionId': sessionId},
        'identification': {'customerId': userId},
        'account': {
          'number': accountInfo.number,
          'bank': accountInfo.bank.toMap()
        },
        'synchron': true
      },
      'provider': 'flatex_at',
      'platform': 'android'
    }).then((value) =>
        BalanceResponseMapper.fromMap(value.data as Map<String, dynamic>));
  }

  static String sha256HashOf(String data) {
    final bytes = utf8.encode(data);
    return sha256.convert(bytes).toString();
  }
}
