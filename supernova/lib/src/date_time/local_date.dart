import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:time/time.dart';

import '../bson_json.dart';
import '../typedefs.dart';
import '../validation.dart';
import 'local_date_time.dart';
import 'local_month.dart';
import 'local_time.dart';
import 'weekday.dart';

@immutable
class LocalDate implements Comparable<LocalDate>, ToJson, Validatable {
  LocalDate(int year, int month, int day)
      : dateTime = DateTime.utc(year, month, day);
  LocalDate.fromDateTime(DateTime dateTime)
      : this(dateTime.year, dateTime.month, dateTime.day);

  factory LocalDate.fromJson(String string) {
    final match = RegExp(r'^(?<year>\d{4,6})-(?<month>\d{2})-(?<day>\d{2})$')
        .firstMatch(string)!;
    return LocalDate(
      int.parse(match.namedGroup('year')!),
      int.parse(match.namedGroup('month')!),
      int.parse(match.namedGroup('day')!),
    );
  }

  factory LocalDate.today() => LocalDate.fromDateTime(DateTime.now());
  factory LocalDate.yesterday() =>
      LocalDate.fromDateTime(LocalDate.today().dateTime - 1.days);

  static final stream = Stream.periodic(1.seconds, (_) => DateTime.now())
      .map(LocalDate.fromDateTime)
      .distinct()
      .asBroadcastStream();

  final DateTime dateTime;

  LocalMonth get localMonth => LocalMonth(year, month);
  int get year => dateTime.year;
  int get month => dateTime.month;
  int get day => dateTime.day;

  Weekday get weekday => Weekday.fromDartInt(dateTime.weekday);
  LocalDate nextOn(Weekday targetWeekday) {
    var difference = targetWeekday.index - weekday.index;
    if (difference <= 0) difference += 7;
    return plus(days: difference);
  }

  LocalDateTime at(LocalTime time) => LocalDateTime(this, time);

  int birthdayToAge([LocalDate? onDate]) {
    final comparisonDate = onDate ?? LocalDate.today();
    if (year < 1) {
      throw ArgumentError.value(
        this,
        'this',
        'Years before one are not yet supported.',
      );
    }
    if (comparisonDate.year < 1) {
      throw ArgumentError.value(
        onDate,
        'onDate',
        'Years before one are not yet supported.',
      );
    }

    final years = comparisonDate.year - year;
    final adjustment = month > comparisonDate.month ||
            (month == comparisonDate.month && day > comparisonDate.day)
        ? -1
        : 0;
    return years + adjustment;
  }

  LocalDate plus({int years = 0, int months = 0, int days = 0}) {
    return LocalDate.fromDateTime(
      DateTime.utc(year + years, month + months, day + days),
    );
  }

  LocalDate minus({int years = 0, int months = 0, int days = 0}) =>
      plus(years: -years, months: -months, days: -days);

  @override
  ValidationErrors validate() {
    return Validate.field('year', Is.positive(year)) &
        Validate.field(
          'month',
          (Is.positive & Is.atMost(DateTime.monthsPerYear))(month),
        ) &
        Validate.field(
          'day',
          (Is.positive & Is.atMost(DateTime.utc(year, month).daysInMonth))(day),
        );
  }

  @override
  bool operator ==(Object other) {
    return other is LocalDate &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode => Object.hash(year, month, day);

  @override
  int compareTo(LocalDate other) => dateTime.compareTo(other.dateTime);

  @override
  String toJson() => toString();
  @override
  String toString() {
    final year = dateTime.year.toString().padLeft(4, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final day = dateTime.day.toString().padLeft(2, '0');
    return '$year-$month-$day';
  }
}

enum LocalDateFormat {
  short._(DateFormat.yMd),
  long._(DateFormat.yMMMMEEEEd);

  const LocalDateFormat._(this._formatGetter);

  // We store a getter instead of the instance because the ambient locale is
  // stored from the instantiation on.
  final ValueGetter<DateFormat> _formatGetter;

  String format(LocalDate date) => _formatGetter().format(date.dateTime);
}
