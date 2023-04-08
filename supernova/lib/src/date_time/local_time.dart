import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../bson_json.dart';
import '../iterable.dart';
import '../typedefs.dart';
import '../validation.dart';

// In web, Dart uses JavaScript's `DateTime` implementation and therefore
// doesn't support microseconds. We, therefore, limit the resolution to
// milliseconds on all platforms.
@immutable
class LocalTime implements Comparable<LocalTime>, ToJson, Validatable {
  const LocalTime(this.hour, this.minute, this.second, [this.millisecond = 0]);
  LocalTime.fromDateTime(DateTime dateTime)
      : this(
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
        );

  factory LocalTime.fromJson(String string) {
    const hour = r'(?<hour>\d{2})';
    const minute = r'(?<minute>\d{2})';
    const second = r'(?<second>\d{2})';
    const millisecond = r'(?<millisecond>\d{3})';
    final match =
        RegExp('^$hour:$minute:$second\\.$millisecond\$').firstMatch(string)!;
    return LocalTime(
      int.parse(match.namedGroup('hour')!),
      int.parse(match.namedGroup('minute')!),
      int.parse(match.namedGroup('second')!),
      int.parse(match.namedGroup('millisecond')!),
    );
  }

  final int hour;
  final int minute;
  final int second;
  final int millisecond;

  Duration differenceTo(LocalTime other) {
    return Duration(
      hours: hour - other.hour,
      minutes: minute - other.minute,
      seconds: second - other.second,
      milliseconds: millisecond - other.millisecond,
    );
  }

  @override
  ValidationErrors validate() {
    return Validate.field(
          'hour',
          (Is.nonNegative & Is.atMost(Duration.hoursPerDay))(hour),
        ) &
        Validate.field(
          'minute',
          (Is.nonNegative & Is.atMost(Duration.minutesPerHour))(minute),
        ) &
        Validate.field(
          'second',
          (Is.nonNegative & Is.atMost(Duration.secondsPerMinute))(second),
        ) &
        Validate.field(
          'millisecond',
          (Is.nonNegative &
              Is.atMost(Duration.millisecondsPerSecond))(millisecond),
        );
  }

  @override
  bool operator ==(Object other) {
    return other is LocalTime &&
        hour == other.hour &&
        minute == other.minute &&
        second == other.second &&
        millisecond == other.millisecond;
  }

  @override
  int get hashCode => Object.hash(hour, minute, second, millisecond);

  @override
  int compareTo(LocalTime other) {
    return compareByMultiple(
      this,
      other,
      (it) => [it.hour, it.minute, it.second, it.millisecond],
    );
  }

  @override
  String toJson() => toString();
  @override
  String toString() {
    final hourString = hour.toString().padLeft(2, '0');
    final minuteString = minute.toString().padLeft(2, '0');
    final secondString = second.toString().padLeft(2, '0');
    final millisecondString = millisecond.toString().padLeft(3, '0');
    return '$hourString:$minuteString:$secondString.$millisecondString';
  }
}

enum LocalTimeFormat {
  minute._(DateFormat.Hm);

  const LocalTimeFormat._(this._formatGetter);

  // We store a getter instead of the instance because the ambient locale is
  // stored from the instantiation on.
  final ValueGetter<DateFormat> _formatGetter;

  String format(LocalTime time) {
    final dateTime = DateTime(
      2000,
      1,
      1,
      time.hour,
      time.minute,
      time.second,
      time.millisecond,
    );
    return _formatGetter().format(dateTime);
  }
}
