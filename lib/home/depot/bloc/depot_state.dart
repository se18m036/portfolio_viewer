part of 'depot_bloc.dart';

abstract class DepotState {}

class DepotLoadInProgress extends DepotState {}

class DepotLoadSuccess extends DepotState {
  DepotLoadSuccess(this.data);

  final DepotPageData data;
}

class DepotLoadFailure extends DepotState {}

