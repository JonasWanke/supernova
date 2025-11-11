import 'package:flutter/widgets.dart';
import 'package:supernova/supernova.dart';

import 'widgets/async.dart';

extension SliverChildBuilderDelegateSupernova on SliverChildBuilderDelegate {
  static SliverChildBuilderDelegate fromList<T>({
    required List<T> items,
    required DataWidgetBuilder<T> itemBuilder,
  }) => SliverChildBuilderDelegate(
    (context, index) => itemBuilder(items[index]),
    childCount: items.length,
  );

  static SliverChildBuilderDelegate separatedFromList<T>({
    required List<T> items,
    required DataWidgetBuilder<T> itemBuilder,
    required IndexedWidgetBuilder separatorBuilder,
  }) => separated(
    itemCount: items.length,
    itemBuilder: (context, index) => itemBuilder(items[index]),
    separatorBuilder: separatorBuilder,
  );

  static SliverChildBuilderDelegate separated({
    required int itemCount,
    required IndexedWidgetBuilder itemBuilder,
    required IndexedWidgetBuilder separatorBuilder,
  }) => SliverChildBuilderDelegate(
    (context, index) {
      final itemIndex = index ~/ 2;
      final Widget widget;
      if (index.isEven) {
        widget = itemBuilder(context, itemIndex);
      } else {
        widget = separatorBuilder(context, itemIndex);
      }
      return widget;
    },
    childCount: (itemCount * 2 - 1).coerceAtLeast(0),
    semanticIndexCallback: (widget, index) => index.isEven ? index ~/ 2 : null,
  );
}
