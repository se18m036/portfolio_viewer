import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_viewer/login/login.dart';

part 'login_event.dart';
part 'login_state.dart';

final Logger _log = Logger();

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginRememberMeChanged>(_onRememberMeChanged);
    on<LoginSubmitted>(_onSubmitted);
    on<LoginCheckBiometrics>(_onCheckBiometrics);
    on<LoginWithBiometrics>(_onLoginWithBiometrics);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        status: Formz.validate([state.password, username]),
      ),
    );
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.username]),
      ),
    );
  }

  void _onRememberMeChanged(
    LoginRememberMeChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(rememberMe: event.rememberMe));
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authenticationRepository.logIn(
          username: state.username.value,
          password: state.password.value,
          rememberMe: state.rememberMe,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on AuthenticationFailedException catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  FutureOr<void> _onCheckBiometrics(
    LoginCheckBiometrics event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        hasBiometrics:
            await _authenticationRepository.supportsBiometricAuthentication(),
        hasSavedCredentials:
            await _authenticationRepository.hasSavedCredentials(),
      ),
    );
  }

  FutureOr<void> _onLoginWithBiometrics(
      LoginWithBiometrics event, Emitter<LoginState> emit) async {
    try {
      await _authenticationRepository.loginWithBiometrics();
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on NoSavedCredentialException catch (_) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        hasSavedCredentials: false,
      ));
    } catch (ex) {
      _log.d(ex);
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
