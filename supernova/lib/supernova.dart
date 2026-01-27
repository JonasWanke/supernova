import 'src/logger.dart';

export 'dart:async';

export 'package:characters/characters.dart';
export 'package:collection/collection.dart' hide IterableZip;
export 'package:color/color.dart' show RgbColor;
export 'package:dart_either/dart_either.dart';
export 'package:dartx/dartx.dart'
    hide
        CharacterRange,
        ComparableInRangeExtension,
        ComparableRange,
        ComparableRangeX,
        DoubleRange,
        DoubleRangeToExtension,
        IntProgression,
        IntRange,
        IntRangeToExtension,
        IterableAll,
        IterableChunked,
        IterableFilter,
        IterableFirstOrNull,
        IterableLastOrNull,
        IterableMapIndexed,
        IterableNone,
        IterablePartition,
        IterableSortedBy,
        IterableWhereNot,
        IterableWhereNotNull,
        IterableZip,
        ListElementAtOrNull,
        ListLowerBoundExtension,
        NumCoerceInRangeExtension,
        Range;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:get_it/get_it.dart' show GetIt;
export 'package:intl/intl.dart' hide DateFormat, TextDirection;
export 'package:json_annotation/json_annotation.dart';
export 'package:meta/meta.dart';
export 'package:oxidized/oxidized.dart';
export 'package:rxdart/rxdart.dart';
export 'package:rxdart_ext/rxdart_ext.dart' hide Equality;
export 'package:time/time.dart';
export 'package:todo/todo.dart';

export 'src/async.dart';
export 'src/bool.dart';
export 'src/bytes.dart';
export 'src/debug_mode.dart';
export 'src/email_address.dart';
export 'src/get_it.dart';
export 'src/google_cloud.dart';
export 'src/https_url.dart';
export 'src/id.dart';
export 'src/iterable.dart';
export 'src/json.dart';
export 'src/localization.dart';
export 'src/logger.dart' hide initLogger;
export 'src/math.dart';
export 'src/oxidized.dart';
export 'src/random.dart';
export 'src/scope_functions.dart';
export 'src/string.dart';
export 'src/typedefs.dart';
export 'src/validation.dart';

Future<void> initSupernova({LogLevel? minLogLevel}) async {
  initLogger(minLogLevel: minLogLevel);
}
