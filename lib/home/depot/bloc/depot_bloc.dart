import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:portfolio_viewer/authentication/bloc/authentication_bloc.dart';

import 'package:portfolio_viewer/home/depot/model/models.dart';

part 'depot_event.dart';

part 'depot_state.dart';

class DepotBloc extends Bloc<DepotEvent, DepotState> {
  DepotBloc({
    required this.depotReference,
    required this.depotRepository,
    required this.authenticationRepository,
  }) : super(DepotLoadInProgress()) {
    on<DepotFetchStarted>(_onDepotFetchStarted);
  }

  final DepotReference depotReference;
  final DepotRepository depotRepository;
  final AuthenticationRepository authenticationRepository;

  Future<void> _onDepotFetchStarted(
    DepotFetchStarted event,
    Emitter<DepotState> emit,
  ) async {
    emit(DepotLoadInProgress());
    final session = authenticationRepository.getSession()!;
    try {
      late PortfolioResponse portfolioResponse;
      late BalanceResponse balanceResponse;

      await Future.wait<void>([
        (() async => balanceResponse = await depotRepository.getBalance(
            session.user, session.id, depotReference.cashAccount))(),
        (() async => portfolioResponse = await depotRepository.getPortfolio(
            session.user, session.id, depotReference.depotAccount))(),
      ]);
      if (portfolioResponse.isError() || balanceResponse.isError()) {
        return emit(DepotLoadFailure());
      }
      final data = DepotPageData(
          depot: DepotInfo(
            depotValue: portfolioResponse.depotValue,
            securities: portfolioResponse.securities,
          ),
          balance: balanceResponse.balanceInfo);
      emit(DepotLoadSuccess(data));
    } catch (err) {
      emit(DepotLoadFailure());
    }
  }
}

