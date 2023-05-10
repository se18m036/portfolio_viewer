part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginCheckBiometrics extends LoginEvent {
  const LoginCheckBiometrics();
}

class LoginWithBiometrics extends LoginEvent {
  const LoginWithBiometrics();
}

class LoginUsernameChanged extends LoginEvent {
  const LoginUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginRememberMeChanged extends LoginEvent {
  const LoginRememberMeChanged(this.rememberMe);

  final bool rememberMe;

  @override
  List<Object> get props => [rememberMe];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
