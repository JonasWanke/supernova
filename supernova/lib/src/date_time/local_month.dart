import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../bson_json.dart';
import '../typedefs.dart';
import '../validation.dart';

@immutable
class LocalMonth implements Comparable<LocalMonth>, ToJson, Validatable {
  LocalMonth(int year, int month) : dateTime = DateTime.utc(year, month, 1);
  LocalMonth.fromDateTime(DateTime dateTime)
      : this(dateTime.year, dateTime.month);

  factory LocalMonth.fromJson(String string) {
    final match =
        RegExp(r'^(?<year>\d{4,6})-(?<month>\d{2})$').firstMatch(string)!;
    return LocalMonth(
      int.parse(match.namedGroup('year')!),
      int.parse(match.namedGroup('month')!),
    );
  }

  static LocalMonth get current => LocalMonth.fromDateTime(DateTime.now());
  static LocalMonth get next => current.plus(months: 1);

  final DateTime dateTime;

  int get year => dateTime.year;
  int get month => dateTime.month;

  LocalMonth plus({int years = 0, int months = 0}) =>
      LocalMonth.fromDateTime(DateTime.utc(year + years, month + months));
  LocalMonth minus({int years = 0, int months = 0}) =>
      plus(years: -years, months: -months);

  @override
  ValidationErrors validate() {
    return Validate.field('year', Is.positive(year)) &
        Validate.field(
          'month',
          (Is.positive & Is.atMost(DateTime.monthsPerYear))(month),
        );
  }

  @override
  bool operator ==(Object other) =>
      other is LocalMonth && year == other.year && month == other.month;
  @override
  int get hashCode => Object.hash(year, month);

  @override
  int compareTo(LocalMonth other) => dateTime.compareTo(other.dateTime);

  LocalMonth copyWith({int? year, int? month}) =>
      LocalMonth(year ?? this.year, month ?? this.month);

  @override
  String toJson() => toString();
  @override
  String toString() {
    final year = dateTime.year.toString().padLeft(4, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    return '$year-$month';
  }
}

enum LocalMonthFormat {
  short._(DateFormat.yM),
  long._(DateFormat.yMMMM),
  monthOnlyLong._(DateFormat.MMMM);

  const LocalMonthFormat._(this._formatGetter);

  // We store a getter instead of the instance because the ambient locale is
  // stored from the instantiation on.
  final ValueGetter<DateFormat> _formatGetter;

  String format(LocalMonth month) => _formatGetter().format(month.dateTime);
}
