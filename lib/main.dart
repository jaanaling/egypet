import 'dart:async';

import 'package:core_logic/core_logic.dart';
import 'package:egypet_trip/routes/route_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';
import 'src/core/dependency_injection.dart';
import 'src/feature/app/presentation/app_root.dart';
import 'package:core_amplitude/core_amplitude.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (FlutterErrorDetails details) {
      _handleFlutterError(details);
    };

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    setupDependencyInjection();

    await InitializationUtil.coreInit(
      domain: 'BAIZAAQfFRcJAAQRXhMfHQ==',
      amplitudeKey: '5dc92f7427b5082ec6eeb227b3fc0f89',
      appId: 'com.nilehorizons.triptoegypt',
      iosAppId: '6741779862',
      initialRoute: RouteValue.photo.path,
      appName: 'Trip to Egypt',
      apiEndpoint: 'AR0dGRpTRkYAB0cdGwAZHQYMDhAZHQhHCgYERg==',
    );

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(
      const AppRoot(),
    );
  }, (Object error, StackTrace stackTrace) {
    _handleAsyncError(error, stackTrace);
  });
}

void _handleFlutterError(FlutterErrorDetails details) {
  AmplitudeUtil.logFailure(
    details.exception is Exception ? Failure.exception : Failure.error,
    details.exception.toString(),
    details.stack,
  );
}

void _handleAsyncError(Object error, StackTrace stackTrace) {
  AmplitudeUtil.logFailure(
    error is Exception ? Failure.exception : Failure.error,
    error.toString(),
    stackTrace,
  );
}
