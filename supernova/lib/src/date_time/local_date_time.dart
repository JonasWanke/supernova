import 'package:dartx/dartx.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../bson_json.dart';
import '../iterable.dart';
import '../typedefs.dart';
import '../validation.dart';
import 'local_date.dart';
import 'local_time.dart';
import 'zoned_date_time.dart';

@immutable
class LocalDateTime implements Comparable<LocalDateTime>, ToJson, Validatable {
  const LocalDateTime(this.date, this.time);
  LocalDateTime.fromDateTime(DateTime dateTime)
      : this(
          LocalDate.fromDateTime(dateTime),
          LocalTime.fromDateTime(dateTime),
        );

  factory LocalDateTime.fromJson(String string) {
    final parts = string.split('T');
    return LocalDateTime(
      LocalDate.fromJson(parts.first),
      LocalTime.fromJson(parts.second),
    );
  }

  static LocalDateTime get now => LocalDateTime.fromDateTime(DateTime.now());

  final LocalDate date;
  final LocalTime time;
  DateTime get dateTime {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
      time.second,
      time.millisecond,
    );
  }

  ZonedDateTime get inLocalZone =>
      ZonedDateTime.fromLocalDateTimeLeniently(this);
  ZonedDateTime get inUtc => ZonedDateTime.fromUtcDateTimeLeniently(this);

  LocalDateTime get previousFullHour {
    final millisecondsWithinHour =
        ((time.minute * Duration.secondsPerMinute) + time.second) *
                Duration.millisecondsPerSecond +
            time.millisecond;
    return this - millisecondsWithinHour.milliseconds;
  }

  LocalDateTime operator +(Duration duration) =>
      LocalDateTime.fromDateTime(dateTime + duration);
  LocalDateTime operator -(Duration duration) =>
      LocalDateTime.fromDateTime(dateTime - duration);

  @override
  ValidationErrors validate() {
    return Validate.field('date', Is.valid(date)) &
        Validate.field('time', Is.valid(time));
  }

  @override
  bool operator ==(Object other) =>
      other is LocalDateTime && date == other.date && time == other.time;
  @override
  int get hashCode => Object.hash(date, time);

  @override
  int compareTo(LocalDateTime other) =>
      compareByMultiple(this, other, (it) => [it.date, it.time]);

  @override
  String toJson() => toString();
  @override
  String toString() => '${date}T$time';
}

enum LocalDateTimeFormat {
  shortToMinute._(_shortToMinute),
  longToMinute._(_longToMinute);

  const LocalDateTimeFormat._(this._formatGetter);

  // We store a getter instead of the instance because the ambient locale is
  // stored from the instantiation on.
  final ValueGetter<DateFormat> _formatGetter;

  String format(LocalDateTime date) => _formatGetter().format(date.dateTime);
}

DateFormat _shortToMinute() => DateFormat.yMd().add_Hm();
DateFormat _longToMinute() => DateFormat.yMMMMEEEEd().add_Hm();
