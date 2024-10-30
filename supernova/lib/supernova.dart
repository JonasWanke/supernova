import 'src/logger.dart';

export 'dart:async';

export 'package:characters/characters.dart';
export 'package:collection/collection.dart' hide IterableZip;
export 'package:color/color.dart' show RgbColor;
export 'package:dartx/dartx.dart'
    hide
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
        ListLowerBoundExtension;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:intl/intl.dart' hide DateFormat, TextDirection;
export 'package:json_annotation/json_annotation.dart';
export 'package:meta/meta.dart';
// Oxidized offers two ways for instantiating these enums, e.g., `Ok(…)` and
// `Result.ok(…)`. By hiding one way for each, our code is more consistent.
export 'package:oxidized/oxidized.dart' hide Err, None, Ok, Some;
export 'package:rxdart/rxdart.dart';
export 'package:time/time.dart';
export 'package:todo/todo.dart';

export 'src/async.dart';
export 'src/bool.dart';
export 'src/bytes.dart';
export 'src/debug_mode.dart';
export 'src/email_address.dart';
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
