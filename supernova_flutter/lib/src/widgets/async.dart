import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' as hooks;
import 'package:flutter_hooks/flutter_hooks.dart' hide useFuture, useStream;
import 'package:supernova/supernova.dart' hide ValueGetter;

import '../localization.dart';

part 'async.freezed.dart';

@freezed
class Snapshot<T> with _$Snapshot<T> {
  const factory Snapshot.loading() = _LoadingSnapshot;
  const factory Snapshot.success(T data) = _SuccessSnapshot;
  const factory Snapshot.error(Object? error, StackTrace stackTrace) =
      _ErrorSnapshot;
  const Snapshot._();

  factory Snapshot.fromAsyncSnapshot(AsyncSnapshot<T> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Snapshot.loading();
    } else if (snapshot.hasError) {
      return Snapshot.error(snapshot.error!, snapshot.stackTrace!);
    } else {
      return Snapshot.success(snapshot.data as T);
    }
  }

  bool get isSuccess => maybeMap(success: (_) => true, orElse: () => false);
  T? get dataOrNull {
    return when(
      loading: () => null,
      success: (data) => data,
      error: (error, stackTrace) => null,
    );
  }

  String toText(
    BuildContext context,
    Mapper<T, String> dataToText, {
    bool shouldUseShortMessages = false,
  }) {
    return when(
      loading: () => shouldUseShortMessages
          ? context.supernovaL10n.loadingShort
          : context.supernovaL10n.loading,
      success: dataToText,
      error: (error, stackTrace) => shouldUseShortMessages
          ? context.supernovaL10n.errorUnknownShort
          : context.supernovaL10n.errorUnknown(
              message: isInDebugMode ? error.toString() : null,
            ),
    );
  }
}

typedef SnapshotWidgetBuilder<T> = Mapper<Snapshot<T>, Widget>;

class SnapshotWidget<T> extends StatelessWidget {
  const SnapshotWidget(
    this.snapshot, {
    super.key,
    this.isSliver = false,
    this.wrapLoadingError,
    this.progressIndicatorSize,
    required this.builder,
  }) : assert(!isSliver || wrapLoadingError == null);

  final Snapshot<T> snapshot;
  final bool isSliver;
  final Mapper<Widget, Widget>? wrapLoadingError;
  final double? progressIndicatorSize;
  final DataWidgetBuilder<T> builder;

  @override
  Widget build(BuildContext context) {
    final wrapLoadingError =
        this.wrapLoadingError ??
        (it) => isSliver ? SliverFillRemaining(child: it) : it;

    return snapshot.when(
      loading: () => wrapLoadingError(
        buildLoading(progressIndicatorSize: progressIndicatorSize),
      ),
      success: builder,
      error: (error, stackTrace) => wrapLoadingError(buildError(error)),
    );
  }

  static Widget buildLoading({double? progressIndicatorSize}) {
    Widget child = const CircularProgressIndicator();
    if (progressIndicatorSize != null) {
      child = SizedBox.square(dimension: progressIndicatorSize, child: child);
    }
    return Center(child: child);
  }

  static Widget buildError(Object? error) {
    return Center(
      child: Builder(
        builder: (context) {
          return Text(
            context.supernovaL10n.errorUnknown(
              message: isInDebugMode ? error.toString() : null,
            ),
          );
        },
      ),
    );
  }
}

typedef DataWidgetBuilder<T> = Mapper<T, Widget>;
SnapshotWidgetBuilder<T> handleLoadingError<T>(
  DataWidgetBuilder<T> builder, {
  Mapper<Widget, Widget>? wrapLoadingError,
  double? progressIndicatorSize,
}) =>
    (snapshot) => SnapshotWidget(
      snapshot,
      wrapLoadingError: wrapLoadingError,
      progressIndicatorSize: progressIndicatorSize,
      builder: builder,
    );
SnapshotWidgetBuilder<T> handleLoadingErrorSliver<T>(
  DataWidgetBuilder<T> builder, {
  double? progressIndicatorSize,
}) {
  return (snapshot) => SnapshotWidget(
    snapshot,
    isSliver: true,
    progressIndicatorSize: progressIndicatorSize,
    builder: builder,
  );
}

SnapshotWidgetBuilder<T> handleError<T extends Object>(
  DataWidgetBuilder<T?> builder,
) {
  return (snapshot) => snapshot.when(
    loading: () => builder(null),
    success: (it) => builder(it),
    error: (error, stackTrace) => SnapshotWidget.buildError(error),
  );
}

SnapshotWidgetBuilder<T> handleErrorSliver<T extends Object>(
  DataWidgetBuilder<T?> builder,
) {
  return (snapshot) => snapshot.when(
    loading: () => builder(null),
    success: (it) => builder(it),
    error: (error, stackTrace) =>
        SliverFillRemaining(child: SnapshotWidget.buildError(error)),
  );
}

// Future

Snapshot<T> useFuture<T>(
  ValueGetter<Future<T>> futureGetter, {
  T? initialData,
  required List<Object?> keys,
}) {
  final future = useMemoized(() async {
    try {
      return await futureGetter();
    } on Exception catch (e, st) {
      logger.error('Future<$T> in `useFuture` has an error:', e, st);
      rethrow;
    }
  }, keys);
  final asyncSnapshot = hooks.useFuture(future, initialData: initialData);
  return Snapshot.fromAsyncSnapshot(asyncSnapshot);
}

class FutureBuilder<T> extends HookWidget {
  const FutureBuilder(
    this.getFuture, {
    super.key,
    required this.keys,
    required this.builder,
  });

  final ValueGetter<Future<T>> getFuture;
  final List<Object?> keys;
  final SnapshotWidgetBuilder<T> builder;

  @override
  Widget build(BuildContext context) {
    final snapshot = useFuture(getFuture, keys: keys);
    return builder(snapshot);
  }
}

// Stream

final _neverEmittingStream = StreamController<Never>.broadcast().stream;

Snapshot<T> useStream<T>(
  ValueGetter<Stream<T>> streamGetter, {
  T? initialData,
  required List<Object?> keys,
}) {
  // When a stream completes, an `AsyncSnapshot` with `ConnectionState.done` is
  // emitted. Unfortunately, it doesn't contain any data (e.g., the previously
  // emitted data). To work around this, we concat a `StreamController` that
  // never emits anything. This way, the last emitted data is still available.
  final stream = useMemoized(
    () => streamGetter().concatWith([_neverEmittingStream]).doOnError((e, st) {
      logger.error('Stream<$T> in `useStream` has an error:', e, st);
    }),
    keys,
  );
  final asyncSnapshot = hooks.useStream(stream, initialData: initialData);
  return Snapshot.fromAsyncSnapshot(asyncSnapshot);
}

class StreamBuilder<T> extends HookWidget {
  const StreamBuilder(
    this.getStream, {
    super.key,
    required this.keys,
    required this.builder,
  });

  final ValueGetter<Stream<T>> getStream;
  final List<Object?> keys;
  final SnapshotWidgetBuilder<T> builder;

  @override
  Widget build(BuildContext context) {
    final snapshot = useStream(getStream, keys: keys);
    return builder(snapshot);
  }
}
