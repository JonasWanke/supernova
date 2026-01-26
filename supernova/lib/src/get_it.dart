import 'package:get_it/get_it.dart';

import '../supernova.dart';

final services = LoggingGetIt(GetIt.instance);

class LoggingGetIt {
  LoggingGetIt(this.getIt);

  final GetIt getIt;

  T call<T extends Object>({dynamic param, String? instanceName}) =>
      getIt(param1: param, instanceName: instanceName);
  T? maybeGet<T extends Object>({dynamic param, String? instanceName}) =>
      getIt.maybeGet<T>(param1: param, instanceName: instanceName);

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

  void registerSingletonWithDependencies<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    required Iterable<Type> dependsOn,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    logger.trace('services.registerSingletonWithDependencies<$T>');
    getIt.registerSingletonWithDependencies<T>(
      factoryFunc,
      instanceName: instanceName,
      dependsOn: dependsOn,
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
