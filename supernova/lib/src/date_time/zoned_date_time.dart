import 'package:meta/meta.dart';
import 'package:time_machine/time_machine.dart' show DateTimeZone;
import 'package:time_machine/time_machine.dart' as time_machine;

import '../bson_json.dart';
import '../iterable.dart';
import 'instant.dart';
import 'local_date.dart';
import 'local_date_time.dart';
import 'local_time.dart';

export 'package:time_machine/time_machine.dart' show DateTimeZone;

@immutable
class ZonedDateTime implements Comparable<ZonedDateTime>, ToJson {
  ZonedDateTime.fromLocalDateTimeLeniently(LocalDateTime localDateTime)
      : this.fromLocalDateTimeInZoneLeniently(localDateTime, _localZone);
  ZonedDateTime.fromUtcDateTimeLeniently(LocalDateTime localDateTime)
      : this.fromLocalDateTimeInZoneLeniently(localDateTime, _utcZone);
  ZonedDateTime.fromLocalDateTimeInZoneLeniently(
    LocalDateTime localDateTime,
    DateTimeZone zone,
  ) : this._(time_machine.ZonedDateTime.atLeniently(
          localDateTime.toTimeMachine(),
          zone,
        ));
  const ZonedDateTime._(this._zonedDateTime);

  factory ZonedDateTime.fromJson(Map<String, dynamic> json) {
    return ZonedDateTime.fromLocalDateTimeInZoneLeniently(
      LocalDateTime.fromJson(json['dateTime'] as String),
      time_machine.DateTimeZoneProviders.defaultProvider!
          .getDateTimeZoneSync(json['zone'] as String),
    );
  }

  static final _utcZone = DateTimeZone.utc;
  static final _localZone = DateTimeZone.local;

  static Future<DateTimeZone?> getTimeZone(String id) =>
      time_machine.DateTimeZoneProviders.defaultProvider!.getZoneOrNull(id);

  final time_machine.ZonedDateTime _zonedDateTime;
  LocalDateTime get localDateTime => _zonedDateTime.localDateTime.asSupernova;
  DateTimeZone get zone => _zonedDateTime.zone;

  ZonedDateTime get inLocalZone =>
      ZonedDateTime._(_zonedDateTime.withZone(_localZone));
  Instant get instant {
    return Instant.fromMillisecondsSinceEpoch(
      _zonedDateTime.toInstant().epochMilliseconds,
    );
  }

  ZonedDateTime operator +(Duration duration) =>
      ZonedDateTime._(_zonedDateTime + time_machine.Time.duration(duration));

  ZonedDateTime copyWith({LocalDateTime? localDateTime}) {
    return ZonedDateTime.fromLocalDateTimeInZoneLeniently(
      localDateTime ?? this.localDateTime,
      zone,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is ZonedDateTime && _zonedDateTime == other._zonedDateTime;
  @override
  int get hashCode => _zonedDateTime.hashCode;

  @override
  int compareTo(ZonedDateTime other) {
    assert(zone == other.zone);

    return compareBy(this, other, (it) => it.localDateTime);
  }

  @override
  Map<String, dynamic> toJson() =>
      {'dateTime': localDateTime.toJson(), 'zone': zone.toString()};

  @override
  String toString() => '$localDateTime ($zone)';
}

extension on LocalDateTime {
  time_machine.LocalDateTime toTimeMachine() {
    return time_machine.LocalDateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
      time.second,
      ms: time.millisecond,
    );
  }
}

extension on time_machine.LocalDateTime {
  LocalDateTime get asSupernova {
    return LocalDateTime(
      LocalDate(
        calendarDate.year,
        calendarDate.monthOfYear,
        calendarDate.dayOfMonth,
      ),
      LocalTime(
        clockTime.hourOfDay,
        clockTime.minuteOfHour,
        clockTime.secondOfMinute,
        clockTime.millisecondOfSecond,
      ),
    );
  }
}
