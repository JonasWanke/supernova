import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart';

AutoSizeGroup useAutoSizeGroup() => useMemoized(AutoSizeGroup.new);

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
