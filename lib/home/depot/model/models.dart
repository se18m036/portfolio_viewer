import 'package:depot_repository/depot_repository.dart';

class DepotInfo {
  DepotInfo({required this.securities, required this.depotValue});

  final List<Security> securities;
  final Value depotValue;
}

class DepotPageData {
  DepotPageData({required this.depot, required this.balance});

  final DepotInfo depot;
  final BalanceInfo balance;
}
