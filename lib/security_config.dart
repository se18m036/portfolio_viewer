import 'dart:io';

import 'package:freerasp/talsec_app.dart';
import 'package:freerasp/talsec_callback.dart';
import 'package:freerasp/talsec_config.dart';
import 'package:freerasp/utils/hash_converter.dart';
import 'package:logger/logger.dart';

Future<void> initFreeRasp() async {
  final log = Logger();
  log.d('initializing freeRASP');

  // void exit(int i) {
  //   log.d('exiting app');
  // }

  final config = TalsecConfig(
    // For Android
    androidConfig: AndroidConfig(
      expectedPackageName: 'dev.koller.portfolio_viewer',
      expectedSigningCertificateHashes: [
        'Fpl+dpD6CoUTyYIuqQw5bk1IM44RmZOZuq2sXXHx5Hc='
      ],
      supportedAlternativeStores: ['com.sec.android.app.samsungapps'],
    ),

    // For iOS
    iosConfig: const IOSconfig(
      appBundleId: 'dev.koller.portfolio_viewer',
      appTeamId: 'YOUR_APP_TEAM_ID',
    ),

    // Common email for Alerts and Reports
    watcherMail: 'se18m036@technikum-wien.at',
  );

  final callback = TalsecCallback(
    // For Android
    androidCallback: AndroidCallback(
      onRootDetected: () => exit(0),
      onEmulatorDetected: () => exit(0),
      onHookDetected: () => exit(0),
      onTamperDetected: () => exit(0),
      onDeviceBindingDetected: () => exit(0),
      onUntrustedInstallationDetected: () => exit(0),
    ),
    // For iOS
    iosCallback: IOSCallback(
      onSignatureDetected: () => exit(0),
      onRuntimeManipulationDetected: () => exit(0),
      onJailbreakDetected: () => exit(0),
      onPasscodeDetected: () => exit(0),
      onSimulatorDetected: () => exit(0),
      onMissingSecureEnclaveDetected: () => exit(0),
      onDeviceChangeDetected: () => exit(0),
      onDeviceIdDetected: () => exit(0),
      onUnofficialStoreDetected: () => exit(0),
    ),
    // Common for both platforms
    onDebuggerDetected: () => exit(0),
  );

  final app = TalsecApp(
    config: config,
    callback: callback,
  );
  log.d('starting freeRASP');
  app.start();
}

