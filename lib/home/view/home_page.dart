import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_viewer/authentication/authentication.dart';
import 'package:portfolio_viewer/home/depot/view/depot_page.dart';

import '../bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
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

    final account =
        context.select((AuthenticationBloc bloc) => bloc.state.account);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Depots'),
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
        child: BlocProvider(
            create: (context) {
              return HomeBloc();
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                switch (state.status) {
                  case HomeStatus.overview:
                    return ListView(
                      shrinkWrap: true,
                      children: _buildList(account, context),
                    );
                  case HomeStatus.depot:
                      // return DepotPage();
                    return ListView(
                      shrinkWrap: true,
                      children: _buildList(account, context),
                    );
                }
              },
            )),
      ),
    );
  }

  List<Widget> _buildList(List<DepotReference> depots, BuildContext context) {
    return depots
        .mapIndexed(
          (i, depot) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                  DepotPage.route(selectedDepot: depot, depotIndex: i),
                );
              },
            child: Card(
              child: ListTile(
                title: Text('Depot ${i + 1}'),
                // subtitle: Text('Here is a second line'),
              ),
            ),
          ),
        )
        .toList();
  }
}
