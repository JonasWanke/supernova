import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:supernova/supernova.dart';

final services = LoggingGetIt(GetIt.instance);

Future<void> initServices({FirebaseOptions? firebaseOptions}) async {
  logger.trace('Initializing common_flutter services…');
  services.registerSingletonAsync(PackageInfo.fromPlatform);

  if (firebaseOptions != null) {
    logger.trace('Initializing Firebase…');
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: firebaseOptions);
  }
}

extension LoggingGetItSupernova on LoggingGetIt {
  PackageInfo get packageInfo => this();
  FirebaseCrashlytics get firebaseCrashlytics => this();
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

class LoggingGetIt {
  LoggingGetIt(this.getIt);

  final GetIt getIt;

  T call<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
    Type? type,
  }) {
    return getIt(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
      type: type,
    );
  }

  Future<T> getAsync<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
    Type? type,
  }) => logger.traceAsync(
    'services.getAsync<$T>',
    body: () => getIt.getAsync<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
      type: type,
    ),
  );

  void registerFactory<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
  }) {
    logger.trace('services.registerFactory<$T>');
    getIt.registerFactory<T>(factoryFunc, instanceName: instanceName);
  }

  void registerCachedFactoryParam<T extends Object, P>(
    T Function(P) factoryFunc, {
    String? instanceName,
  }) {
    logger.trace('services.registerCachedFactoryParam<$T, $P>');
    getIt.registerCachedFactoryParam<T, P, void>(
      (it, _) => factoryFunc(it),
      instanceName: instanceName,
    );
  }

  T registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    logger.trace('services.registerSingleton<$T>');
    return getIt.registerSingleton<T>(
      instance,
      instanceName: instanceName,
      signalsReady: signalsReady,
      dispose: dispose,
    );
  }

  void registerSingletonAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
    Iterable<Type>? dependsOn,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    logger.trace('services.registerSingletonAsync<$T>');
    getIt.registerSingletonAsync<T>(
      () => logger.traceAsync(
        'services.registerSingletonAsync<$T>.factory',
        body: factoryFunc,
      ),
      instanceName: instanceName,
      dependsOn: dependsOn,
      signalsReady: signalsReady,
      dispose: dispose,
    );
  }

  bool isRegistered<T extends Object>({
    Object? instance,
    String? instanceName,
  }) => getIt.isRegistered<T>(instance: instance, instanceName: instanceName);

  Future<void> allReady({
    Duration? timeout,
    bool ignorePendingAsyncCreation = false,
  }) => logger.traceAsync(
    'services.allReady',
    body: () => getIt.allReady(
      timeout: timeout,
      ignorePendingAsyncCreation: ignorePendingAsyncCreation,
    ),
  );
}
