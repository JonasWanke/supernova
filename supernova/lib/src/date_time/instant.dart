import 'package:bson/bson.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:time/time.dart';

import '../bson_json.dart';
import 'local_date.dart';
import 'local_date_time.dart';
import 'local_time.dart';

@immutable
class Instant implements Comparable<Instant>, ToBson, ToJson {
  factory Instant.now() =>
      Instant.fromMillisecondsSinceEpoch(DateTime.now().millisecondsSinceEpoch);
  factory Instant.fromMillisecondsSinceEpoch(int millisecondsSinceEpoch) =>
      Instant.fromDateTime(
        DateTime.fromMillisecondsSinceEpoch(
          millisecondsSinceEpoch,
          isUtc: true,
        ),
      );

  factory Instant.fromJson(String string) {
    if (string.isEmpty || string.substring(string.length - 1) != 'Z') {
      throw FormatException('Invalid instant string: "$string".');
    }

    return LocalDateTime.fromJson(string.substring(0, string.length - 1))
        .inUtc
        .instant;
  }
  factory Instant.fromBson(DateTime bson) => Instant.fromDateTime(bson);

  Instant.fromDateTime(this.dateTime)
      : assert(dateTime.isUtc),
        assert(dateTime.microsecond == 0);

  final DateTime dateTime;

  LocalDateTime get localDateTimeInUtc => LocalDateTime.fromDateTime(dateTime);
  LocalDateTime get localDateTimeInLocalZone {
    final local = dateTime.toLocal();
    return LocalDateTime(
      LocalDate(local.year, local.month, local.day),
      LocalTime(local.hour, local.minute, local.second, local.millisecond),
    );
  }

  Duration get durationSinceEpoch =>
      dateTime.millisecondsSinceEpoch.milliseconds;

  @override
  bool operator ==(Object other) {
    return other is Instant &&
        dateTime.millisecondsSinceEpoch ==
            other.dateTime.millisecondsSinceEpoch;
  }

  @override
  int get hashCode => dateTime.millisecondsSinceEpoch.hashCode;

  Instant operator +(Duration duration) =>
      Instant.fromDateTime(dateTime.add(duration));
  Instant operator -(Duration duration) =>
      Instant.fromDateTime(dateTime.subtract(duration));

  Duration durationUntil(Instant other) => other.dateTime.difference(dateTime);

  @override
  int compareTo(Instant other) => dateTime.compareTo(other.dateTime);

  @override
  String toString() => '${localDateTimeInUtc}Z';

  @override
  String toJson() => toString();
  @override
  BsonDate toBson() => BsonDate(dateTime);
}

@immutable
class InstantFormat {
  const InstantFormat._(this._formatGetter);

  static final long = InstantFormat._(() => DateFormat.yMMMMEEEEd().add_jms());

  // We store a getter instead of the instance because the ambient locale is
  // stored from the instantiation on.
  final DateFormat Function() _formatGetter;

  String format(Instant instant) => _formatGetter().format(instant.dateTime);
}
