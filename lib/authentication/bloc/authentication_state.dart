part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.account = const <DepotReference>[],
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(List<DepotReference> account)
      : this._(status: AuthenticationStatus.authenticated, account: account);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final List<DepotReference> account;

  @override
  List<Object> get props => [status, account];
}
