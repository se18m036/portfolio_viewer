import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:depot_repository/depot_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.unknown()) {
    on<_AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogout>(_onAuthenticationLogout);
    on<AuthenticationEndSession>(_onAuthenticationEndSession);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(_AuthenticationStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final account = await getDepotReferences();
        return emit(
          account != null
              ? AuthenticationState.authenticated(account)
              : const AuthenticationState.unauthenticated(),
        );
      case AuthenticationStatus.unknown:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationEndSession(
    AuthenticationEndSession event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.endSession();
  }

  void _onAuthenticationLogout(
    AuthenticationLogout event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.logOut();
  }

  Future<List<DepotReference>?> getDepotReferences() async {
    final session = _authenticationRepository.getSession();

    if (session == null) {
      return null;
    }
    final account = await _authenticationRepository.depotRepository
        .getAccount(session.user, session.id);

    if (account.isError()) {
      return null;
    }

    final depotAccounts = account.accountInfos
        .where((account) => account.accountType == AccountType.DEPOT);
    final cashAccounts = account.accountInfos
        .where((account) => account.accountType == AccountType.CASH)
        .lastBy((acc) => acc.number);

    final depotInfos = depotAccounts
        .map((account) => DepotReference(
            depotAccount: account,
            cashAccount: cashAccounts[account.compliantAccounts.first.number]!))
        .toList(growable: false);

    return depotInfos;
  }
}

class DepotReference {
  DepotReference({required this.cashAccount, required this.depotAccount});

  final AccountInfo cashAccount;
  final AccountInfo depotAccount;
}
