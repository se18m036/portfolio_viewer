import 'package:authentication_repository/authentication_repository.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_viewer/authentication/bloc/authentication_bloc.dart';
import 'package:portfolio_viewer/home/depot/bloc/depot_bloc.dart';

class DepotPage extends StatelessWidget {

  const DepotPage({
    super.key,
    required this.selectedDepot,
    required this.depotIndex,
  });

  final DepotReference selectedDepot;
  final int depotIndex;

  static Route<void> route({
    required DepotReference selectedDepot,
    required int depotIndex,
  }) {
    return MaterialPageRoute<void>(
        builder: (context) => BlocProvider(
            create: (context) => DepotBloc(
                authenticationRepository:
                    RepositoryProvider.of<AuthenticationRepository>(context),
                depotRepository:
                    RepositoryProvider.of<DepotRepository>(context),
                depotReference: selectedDepot)
              ..add(DepotFetchStarted()),
            child: DepotPage(
              selectedDepot: selectedDepot,
              depotIndex: depotIndex,
            )));
  }

  @override
  Widget build(BuildContext context) {
    void handleMenuClick(String value) {
      final authBloc = context.read<AuthenticationBloc>();
      switch (value) {
        case 'End Session':
          authBloc.add(AuthenticationEndSession());
          break;
        case 'Logout':
          authBloc.add(AuthenticationLogout());
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Depot ${depotIndex + 1}'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleMenuClick,
            itemBuilder: (BuildContext context) {
              return {'End Session', 'Logout'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocBuilder<DepotBloc, DepotState>(builder: (context, state) {
          if (state is DepotLoadInProgress) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is DepotLoadFailure) {
            return const Center(child: Text('Error loading Depot.'));
          }
          if (state is DepotLoadSuccess) {
            return ListView(
              shrinkWrap: true,
              children: <Widget>[
                BalanceCard(
                  depotBalance: state.data.depot.depotValue.value,
                  cashBalance: state.data.balance.balanceBooked.amount.value,
                ),
                ..._buildSecuritiesCart(state.data.depot.securities),
              ],
            );
          }
          throw Exception("Missing DepotState");
        }),
      ),
    );
  }

  List<Widget> _buildSecuritiesCart(List<Security> securities) {
    return securities
        .map((security) => Card(
              child: CustomListTile(
                title: security.paper.name,
                info:
                    '${security.purchasePerfData.value.value} € (${security.quantity!.value} units)',
              ),
            ))
        .toList(growable: false);
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.title, required this.info});

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
            child: Text(
              info,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard(
      {super.key, required this.depotBalance, required this.cashBalance});

  final String depotBalance;
  final String cashBalance;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            balanceInfoRow('Depot balance:', depotBalance, '€'),
            const SizedBox(height: 8),
            balanceInfoRow('Cash balance:', cashBalance, '€'),
          ],
        ),
      ),
    );
  }

  Widget balanceInfoRow(String label, String value, String currency) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          '$value $currency',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
