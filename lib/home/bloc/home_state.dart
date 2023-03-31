part of 'home_bloc.dart';

enum HomeStatus { overview, depot }

class HomeState extends Equatable {
  const HomeState._({
    this.status = HomeStatus.overview,
    this.selectedDepot,
  });

  const HomeState.overview() : this._();

  const HomeState.depot(DepotReference depot)
      : this._(status: HomeStatus.depot, selectedDepot: depot);

  final DepotReference? selectedDepot;
  final HomeStatus status;

  @override
  List<Object?> get props => [status, selectedDepot?.depotAccount.number];
}
