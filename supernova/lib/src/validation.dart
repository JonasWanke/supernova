import 'package:chrono/chrono.dart';
import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxidized/oxidized.dart';

import 'string.dart';
import 'typedefs.dart';

part 'validation.freezed.dart';

typedef Validator<T> = Mapper<T, ValidationErrors>;
typedef ValidationErrors = List<ValidationError>;
typedef ValidationResult = Result<Unit, ValidationErrors>;

extension ValidatorExtension<T> on Validator<T> {
  Validator<T> operator &(Validator<T> other) =>
      (value) => this(value) & other(value);
}

extension ValidationErrorsExtension on ValidationErrors {
  ValidationResult toResult() =>
      isEmpty ? const Result.ok(unit) : Result.err(this);

  ValidationErrors operator &(ValidationErrors other) => [...this, ...other];
}

@immutable
abstract class Validatable {
  const Validatable();

  @useResult
  ValidationErrors validate();
}

extension ValidatableExtension on Validatable {
  void requireIsValid() {
    final errors = validate();
    if (errors.isEmpty) return;

    throw Exception(
      'Validation failed for $runtimeType:\n'
      '${errors.join('\n')}',
    );
  }
}

@immutable
class Validate {
  const Validate._();

  static ValidationErrors field(String fieldName, ValidationErrors errors) {
    if (errors.isEmpty) return [];

    return [ValidationError.field(fieldName, errors)];
  }

  static ValidationErrors equals<T>(T actual, T expected) {
    if (const DeepCollectionEquality().equals(actual, expected)) return [];

    return [ValidationError.notEqual(actual, expected)];
  }

  // ignore: avoid_positional_boolean_parameters
  static ValidationErrors custom(String message, bool isValid) {
    if (isValid) return [];

    return [ValidationError.custom(message)];
  }
}

@immutable
class Is {
  const Is._();

  static const ValidationErrors alwaysValid = [];

  static Validator<T?> nullOr<T extends Object>(Validator<T> other) {
    return (value) {
      if (value == null) return [];

      return other(value);
    };
  }

  static Validator<T?> notNullAnd<T extends Object>(Validator<T> other) {
    return (value) {
      if (value == null) return [const ValidationError.custom('Is null.')];

      return other(value);
    };
  }

  // Validatable
  static ValidationErrors valid<T extends Validatable>(T value) =>
      value.validate();

  // num
  static Validator<num> get positive {
    return (value) =>
        Validate.custom('Number must be positive (> 0).', value > 0);
  }

  static Validator<num> get nonNegative {
    return (value) =>
        Validate.custom('Number must be non-negative (>= 0).', value >= 0);
  }

  static Validator<num> atMost(int max) {
    return (value) {
      return Validate.custom(
        'Number must be less than or equal to $max.',
        value <= max,
      );
    };
  }

  static Validator<num> inInclusiveRange(num min, num max) {
    assert(min <= max);

    return (value) {
      return Validate.custom(
        'Number must be in the inclusive range $min – $max.',
        min <= value && value <= max,
      );
    };
  }

  // String
  static Validator<String> singleLineString({int? maxLength}) {
    return _nonEmptyString &
        _trimmedString &
        _singleLineString &
        _stringHasOptionalMaxLength(maxLength);
  }

  static Validator<String> multiLineString({int? maxLength}) =>
      _nonEmptyString & _trimmedString & _stringHasOptionalMaxLength(maxLength);

  static Validator<String> _stringHasOptionalMaxLength(int? maxLength) {
    assert(maxLength == null || maxLength > 0);

    return (value) {
      if (maxLength == null) return Is.alwaysValid;

      return Validate.custom(
        'String must be at most $maxLength characters (grapheme clusters) '
        'long.',
        value.characters.length <= maxLength,
      );
    };
  }

  static Validator<String> get _trimmedString {
    return (value) {
      return Validate.custom(
        'String must not contain leading or trailing whitespace.',
        value == value.trim(),
      );
    };
  }

  static Validator<String> get _nonEmptyString {
    return (value) =>
        Validate.custom('String must not be empty.', value.isNotEmpty);
  }

  static Validator<String> get _singleLineString {
    return (value) =>
        Validate.custom('String must be a single line.', value.isSingleLine);
  }

  static Validator<String> match(RegExp regExp) {
    return (value) {
      return Validate.custom(
        'String must match the regular expression `${regExp.pattern}`.',
        regExp.hasMatch(value),
      );
    };
  }

  static Validator<String> get phoneNumber => singleLineString();

  // Instant
  static Validator<Instant> inPast(TimeDelta allowedClockSkew) {
    return (value) {
      return Validate.custom(
        'Instant must be in the past (± $allowedClockSkew).',
        value < Instant.now() + allowedClockSkew,
      );
    };
  }

  static Validator<Instant> inFuture(TimeDelta allowedClockSkew) {
    return (value) {
      return Validate.custom(
        'Instant must be in the future (± $allowedClockSkew).',
        value > Instant.now() - allowedClockSkew,
      );
    };
  }

  // LocalDate
  static Validator<Date> get dateInPastLocalZone {
    return (value) => Validate.custom(
      'Date must be in the past.',
      value < Date.todayInLocalZone(),
    );
  }

  // Duration
  static Validator<TimeDelta> get positiveTimeDelta {
    return (value) {
      return Validate.custom(
        'Duration must be positive (> 0).',
        value.isPositive,
      );
    };
  }

  // Iterable
  static Validator<Iterable<T>> nonEmptyIterable<T>() {
    return (value) =>
        Validate.custom('Iterable must not be empty.', value.isNotEmpty);
  }

  static Validator<Iterable<T>> unique<T, C>(
    String message,
    Mapper<T, C> compareBy,
  ) {
    return (value) {
      return Validate.custom(
        message,
        value.map(compareBy).toSet().length == value.length,
      );
    };
  }

  // List
  static Validator<List<T>> nonEmptyListOf<T>(Validator<T> itemValidator) {
    return (value) =>
        nonEmptyIterable<T>()(value) & listOf(itemValidator)(value);
  }

  static Validator<List<T>> listOf<T>(Validator<T> itemValidator) {
    return (value) {
      return value.mapIndexedNotNull((index, it) {
        final errors = itemValidator(it);
        if (errors.isEmpty) return null;

        return ValidationError.listItem(index, errors);
      }).toList();
    };
  }

  // Set
  static Validator<Set<T>> nonEmptySetOf<T>(Validator<T> itemValidator) {
    return (value) =>
        nonEmptyIterable<T>()(value) & setOf(itemValidator)(value);
  }

  static Validator<Set<T>> setOf<T>(Validator<T> itemValidator) {
    return (value) {
      return value.mapNotNull((it) {
        final errors = itemValidator(it);
        if (errors.isEmpty) return null;

        return ValidationError.setItem(it, errors);
      }).toList();
    };
  }

  // Map
  static Validator<Map<K, V>> mapOf<K, V>(
    Validator<K> keyValidator,
    Validator<V> valueValidator,
  ) {
    return (value) {
      return value.entries.expand((it) {
        final keyErrors = keyValidator(it.key);
        final valueErrors = valueValidator(it.value);
        return [
          if (keyErrors.isNotEmpty) ValidationError.mapKey(it.key, keyErrors),
          if (valueErrors.isNotEmpty)
            ValidationError.mapValue(it.key, valueErrors),
        ];
      }).toList();
    };
  }

  // Result
  static Validator<Result<T, E>> resultOf<T extends Object, E extends Object>(
    Validator<T> okValidator,
    Validator<E> errorValidator,
  ) {
    return (value) => value.map(okValidator).unwrapOrElse(errorValidator);
  }
}

@freezed
class ValidationError with _$ValidationError {
  const factory ValidationError.field(
    String fieldName,
    ValidationErrors errors,
  ) = FieldValidationError;

  const factory ValidationError.listItem(int index, ValidationErrors errors) =
      ListItemValidationError;

  const factory ValidationError.setItem(dynamic item, ValidationErrors errors) =
      SetItemValidationError;

  const factory ValidationError.mapKey(dynamic key, ValidationErrors errors) =
      MapKeyValidationError;
  const factory ValidationError.mapValue(dynamic key, ValidationErrors errors) =
      MapValueValidationError;

  const factory ValidationError.notEqual(dynamic actual, dynamic expected) =
      NotEqualValidationError;
  const factory ValidationError.custom(String message) = CustomValidationError;

  const ValidationError._();

  @override
  String toString() {
    return when(
      field: (fieldName, errors) => '$fieldName: [${errors.joinToString()}]',
      listItem: (index, errors) => '$index: [${errors.joinToString()}]',
      setItem: (item, errors) => '`$item`: [${errors.joinToString()}]',
      mapKey: (key, errors) => '`$key`: [${errors.joinToString()}]',
      mapValue: (key, errors) => '`$key`: [${errors.joinToString()}]',
      notEqual: (actual, expected) =>
          'Actual: `$actual`, expected: `$expected`.',
      custom: (message) => message,
    );
  }
}
