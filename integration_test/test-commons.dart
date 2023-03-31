import 'package:flutter/material.dart';
import 'package:patrol/patrol.dart';

Future<T> withDelay<T>(T value) {
  return Future.delayed(const Duration(microseconds: 200), () => value);
}

Future<void> loginWithCredentials(
  PatrolTester $, [
  String username = 'test-user',
  String password = 'test-password',
]) async {
  final usernameInput = $(#loginForm_usernameInput_textField);
  final passwordInput = $(#loginForm_passwordInput_textField);
  final loginButton = $(#loginForm_continue_raisedButton);

  await usernameInput.enterText('test-user');
  await passwordInput.enterText('test-password');

  await loginButton
      .which<ElevatedButton>((widget) => widget.enabled)
      .scrollTo()
      .tap();
}
