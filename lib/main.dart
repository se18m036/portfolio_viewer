import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_viewer/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentry_logging/sentry_logging.dart';

Future<void> main() async {
  // disable logs in release builds
  if (kReleaseMode) {
    Logger.level = Level.warning;
    debugPrint = (String? message, {int? wrapWidth}) {};
  }
  final depotRepository = DepotRepository();

  await SentryFlutter.init((options) {
    options
      ..dsn = 'https://ee5a3bcbe4484d1b8569bb739db28d23@o4505127255146496.ingest.sentry.io/4505127268909056'
      ..tracesSampleRate = 1.0
      ..addIntegration(LoggingIntegration());
  },
    appRunner: () =>
        runZoned(() {
          runApp(App(
            depotRepository: depotRepository,
            authenticationRepository:
            AuthenticationRepository(depotRepository: depotRepository),
          ));
        }),
  );
