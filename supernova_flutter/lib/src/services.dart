import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:supernova/supernova.dart';

final services = GetIt.instance;

Future<void> initServices(FirebaseOptions firebaseOptions) async {
  logger.trace('Initializing common_flutter services…');
  services.registerSingletonAsync(PackageInfo.fromPlatform);

  logger.trace('Initializing Firebase…');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
}

extension GetItSupernova on GetIt {
  PackageInfo get packageInfo => get();
  FirebaseCrashlytics get firebaseCrashlytics => get();
}

String get appVersion {
  final packageInfo = services.packageInfo;
  return '${packageInfo.version}+${packageInfo.buildNumber}';
}

// Firebase Crashlytics

Future<void> runWithCrashlytics(Future<void> Function() appRunner) async {
  await _initializeFirebaseCrashlytics();

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  FlutterError.demangleStackTrace = (stack) {
    if (stack is Trace) return stack.vmTrace;
    if (stack is Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  await runZonedGuarded(
    () => Chain.capture(appRunner),
    (exception, stackTrace) =>
        logger.wtf('Uncaught error:', exception, stackTrace),
  );
}

var _isFirebaseCrashlyticsInitialized = false;
bool get isFirebaseCrashlyticsInitialized => _isFirebaseCrashlyticsInitialized;

Future<void> _initializeFirebaseCrashlytics() async {
  if (kIsWeb || isFirebaseCrashlyticsInitialized) return;

  logger.trace('Initializing Firebase Crashlytics…');
  final crashlytics = FirebaseCrashlytics.instance;
  await crashlytics.setCrashlyticsCollectionEnabled(!kDebugMode);
  services.registerSingleton(crashlytics);
  _isFirebaseCrashlyticsInitialized = true;
  logger.trace('Initialized Firebase Crashlytics!');
}
