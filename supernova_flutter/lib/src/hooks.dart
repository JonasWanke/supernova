import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueGetter, ValueSetter;

AutoSizeGroup useAutoSizeGroup() => useMemoized(AutoSizeGroup.new);

void useDispose(VoidCallback callback, [List<Object?> keys = const []]) =>
    useEffect(() => callback, keys);
T useDisposable<T>(
  ValueGetter<T> create, {
  required void Function(T) dispose,
  List<Object?> keys = const [],
}) {
  final disposable = useMemoized(create, keys);
  useDispose(() => dispose(disposable));
  return disposable;
}

MenuController useMenuController() => useMemoized(MenuController.new);

GlobalKey<S> useGlobalKey<S extends State<StatefulWidget>>() =>
    useMemoized(GlobalKey<S>.new);

RebuildState useRebuildRequest() {
  final key = useState(UniqueKey());
  final previousKey = usePrevious(key.value);
  return RebuildState._(
    wasRequested: previousKey != null && previousKey != key.value,
    isFirstBuild: previousKey == null,
    request: () => key.value = UniqueKey(),
  );
}

class RebuildState {
  RebuildState._({
    required this.wasRequested,
    required this.isFirstBuild,
    required this.request,
  });

  final bool wasRequested;
  final bool isFirstBuild;
  bool get wasRequestedOrIsFirstBuild => wasRequested || isFirstBuild;

  final VoidCallback request;
}

TickerProvider useTickerProvider({List<Object?>? keys}) {
  return use(
    keys != null ? _TickerProviderHook(keys) : const _TickerProviderHook(),
  );
}

class _TickerProviderHook extends Hook<TickerProvider> {
  const _TickerProviderHook([List<Object?>? keys]) : super(keys: keys);

  @override
  _TickerProviderHookState createState() => _TickerProviderHookState();
}

class _TickerProviderHookState
    extends HookState<TickerProvider, _TickerProviderHook>
    implements TickerProvider {
  final List<Ticker> _tickers = [];

  @override
  Ticker createTicker(TickerCallback onTick) {
    final newTicker = Ticker(onTick, debugLabel: 'created by $context');
    _tickers.add(newTicker);
    return newTicker;
  }

  @override
  void dispose() {
    if (_tickers.any((ticker) => ticker.isActive)) {
      throw FlutterError(
        'Not all tickers created by useTickerProvider were cleaned up',
      );
    }
  }

  @override
  TickerProvider build(BuildContext context) {
    for (final ticker in _tickers) {
      ticker.muted = !TickerMode.of(context);
    }
    return this;
  }

  @override
  String get debugLabel => 'useTickerProvider';

  @override
  bool get debugSkipValue => true;
}

void useOnValueListenableChange<T>(
  ValueListenable<T>? listenable,
  ValueSetter<T> listener,
) => useOnListenableChange(listenable, () => listener(listenable!.value));
