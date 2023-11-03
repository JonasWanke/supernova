import 'package:firebase_core/firebase_core.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart';

FirebaseOptions supernovaFirebaseOptions({
  AndroidFirebaseConfig? android,
  IosFirebaseConfig? ios,
  WebFirebaseConfig? web,
  required String messagingSenderId,
  required String projectId,
}) {
  final FirebaseConfig base;
  final IosFirebaseConfig? iosConfig;
  switch (PlatformX.platform) {
    case PlatformEnum.Android:
      base = android!;
      iosConfig = null;
    case PlatformEnum.IOS:
      base = ios!;
      iosConfig = ios;
    case PlatformEnum.Web:
      base = web!;
      iosConfig = null;
    // ignore: no_default_cases
    default:
      TODO('Unsupported platform ${PlatformX.platform.name}.');
  }
  return FirebaseOptions(
    apiKey: base.apiKey,
    appId: base.appId,
    messagingSenderId: messagingSenderId,
    projectId: projectId,
    measurementId: web?.measurementId,
    androidClientId: iosConfig?.androidClientId,
    iosClientId: iosConfig?.clientId,
  );
}

@immutable
abstract class FirebaseConfig {
  const FirebaseConfig({required this.apiKey, required this.appId});

  final String apiKey;
  final String appId;
}

class AndroidFirebaseConfig extends FirebaseConfig {
  const AndroidFirebaseConfig({required super.apiKey, required super.appId});
}

class IosFirebaseConfig extends FirebaseConfig {
  const IosFirebaseConfig({
    required super.apiKey,
    required super.appId,
    required this.androidClientId,
    required this.clientId,
  });

  final String androidClientId;
  final String clientId;
}

class WebFirebaseConfig extends FirebaseConfig {
  const WebFirebaseConfig({
    required super.apiKey,
    required super.appId,
    required this.measurementId,
  });

  /// Required for Google Analytics.
  final String measurementId;
}
