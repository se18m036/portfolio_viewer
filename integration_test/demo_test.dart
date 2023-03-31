import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:depot_repository/depot_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol/patrol.dart';
import 'package:portfolio_viewer/app.dart';

import 'mocks.dart';
import 'test-commons.dart';

// use this flag for running a single test case
const SKIP_ALL = false;

void main() {
  group('security tests', () {
    final depotRepository = MockDepotRepository();
    late AuthenticationRepository authenticationRepository;

    setUp(() {
      authenticationRepository =
          AuthenticationRepository(depotRepository: depotRepository);

      when(() => depotRepository.login('test-user', 'test-password'))
          .thenAnswer((_) => withDelay(SessionResponse(OK, 'test-session')));
      when(() => depotRepository.logoff('test-user', 'test-session'))
          .thenAnswer((_) => withDelay(LogoffResponse(OK)));
      when(() => depotRepository.getAccount('test-user', 'test-session'))
          .thenAnswer((_) => withDelay(AccountResponse(
              OK, [accountInfoCashfixture, accountInfoDepotFixture])));
      when(() => depotRepository.getPortfolio(
              'test-user', 'test-session', accountInfoDepotFixture))
          .thenAnswer((_) => withDelay(portfolioResponse()));
      when(() => depotRepository.getBalance(
              'test-user', 'test-session', accountInfoCashfixture))
          .thenAnswer((_) => withDelay(BalanceResponse(OK, balanceInfo)));
    });

    tearDown(() {
      reset(depotRepository);
    });

    patrolTest(
      'smoke test: login form renders and is visible',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));
        final tester = $.tester;

        final usernameInput = $(#loginForm_usernameInput_textField);
        final passwordInput = $(#loginForm_passwordInput_textField);
        final loginBtn = $(#loginForm_continue_raisedButton);

        expect(usernameInput.visible, equals(true));
        expect(passwordInput.visible, equals(true));
        expect(tester.widget<ElevatedButton>(loginBtn).enabled, equals(false));
      },
    );

    patrolTest(
      'user is logged out when putting app in background',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));
        await loginWithCredentials($);

        expect($('Depot 1'), findsOneWidget);
        expect(authenticationRepository.getSession(), isNotNull);

        await $.native.pressHome();
        await $.native.openApp();

        await $('Login').waitUntilVisible(timeout: const Duration(seconds: 5));
        expect($('Login').visible, equals(true));
        expect(authenticationRepository.getSession(), isNull);
      },
    );

    patrolTest(
      'session is terminated at the server when ending the session locally',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));
        await loginWithCredentials($);

        expect($('Depot 1'), findsOneWidget);
        expect(authenticationRepository.getSession(), isNotNull);

        await $(PopupMenuButton<String>).tap();
        await $('End Session').tap();

        expect($('Login'), findsWidgets);
        expect(authenticationRepository.getSession(), isNull);
        verify(() => depotRepository.logoff('test-user', 'test-session'))
            .called(1);
      },
    );

    patrolTest(
      'ensure no password or username is logged',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        final logs = <LogEvent>[];
        Logger.addLogListener(logs.add);

        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));
        await loginWithCredentials($);

        expect($('Depot 1'), findsOneWidget);

        final messages = logs.map((e) => e.message.toString());

        expect(messages, isNotEmpty);
        expect(messages, everyElement(isNot(matches('test-user'))));
        expect(messages, everyElement(isNot(matches('test-password'))));
        expect(messages, everyElement(isNot(matches('test-session'))));
      },
    );

    patrolTest(
      'ensure no verbose or debug logs are produced - happy path',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        final logs = <LogEvent>[];
        Logger.addLogListener(logs.add);

        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));
        await loginWithCredentials($);

        await $('Depot 1').tap();
        expect($('Microsoft Corp.'), findsOneWidget);
        await $(PopupMenuButton<String>).tap();
        await $('End Session').tap();

        final messages = logs
            .where((e) => e.level.index > Level.debug.index)
            .map((e) => e.message.toString());

        expect(messages, isEmpty);
      },
    );

    patrolTest(
      'ensure no verbose or debug logs are produced - wrong password',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        final logs = <LogEvent>[];
        Logger.addLogListener(logs.add);

        when(() => depotRepository.login(any(), any()))
            .thenThrow(dioLoginError);

        await $.pumpWidgetAndSettle(App(
            depotRepository: depotRepository,
            authenticationRepository: authenticationRepository));

        await loginWithCredentials($, 'test-user', 'invalid-password');
        expect($('Login').visible, equals(true));

        final messages = logs
            .where((e) => e.level.index > Level.debug.index)
            .map((e) => e.message.toString());

        expect(messages, isEmpty);
      },
    );

    patrolTest(
      'test certificate pinning',
      nativeAutomation: true,
      skip: SKIP_ALL,
      ($) async {
        final repository = DepotRepository();

        await expectLater(
          () => repository.login('', ''),
          throwsA(isA<DioError>().having(
              (error) => error.response?.statusCode, 'status code', 400)),
        );

        repository.dio.options.baseUrl = 'https://example.com';
        await expectLater(
          () => repository.login('', ''),
          throwsA(isA<DioError>().having(
              (error) => error.error, 'error', isA<HandshakeException>())),
        );
      },
    );
  });
}
