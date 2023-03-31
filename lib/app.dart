import 'package:authentication_repository/authentication_repository.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_viewer/authentication/authentication.dart';
import 'package:portfolio_viewer/home/home.dart';
import 'package:portfolio_viewer/login/login.dart';
import 'package:portfolio_viewer/security_config.dart';
import 'package:portfolio_viewer/splash/splash.dart';
import 'package:privacy_screen/privacy_screen.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.depotRepository,
    required this.authenticationRepository,
  });

  final DepotRepository depotRepository;
  final AuthenticationRepository authenticationRepository;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
    initFreeRasp();

    // Turn screen white when app is in background & block screenshots
    PrivacyScreen.instance.enable(
      backgroundColor: Colors.white.withOpacity(0),
    );
  }

  @override
  void dispose() {
    widget.authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (_) => widget.authenticationRepository,
        ),
        RepositoryProvider<DepotRepository>(
            create: (_) => widget.depotRepository)
      ],
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: widget.authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with WidgetsBindingObserver {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      BlocProvider.of<AuthenticationBloc>(context)
          .add(AuthenticationEndSession());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  HomePage.route(),
                  (route) => false,
                );
                break;
              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
                break;
              case AuthenticationStatus.unknown:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
