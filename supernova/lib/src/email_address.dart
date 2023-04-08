import 'package:email_validator/email_validator.dart';
import 'package:meta/meta.dart';

import 'validation.dart';

@immutable
class EmailAddress implements Validatable {
  const EmailAddress(this.value);
  factory EmailAddress.fromJson(String json) => EmailAddress(json);

  static bool isValid(String value) => EmailValidator.validate(value);

  final String value;

  @override
  ValidationErrors validate() {
    return Validate.custom(
      'Value must be a valid email address.',
      isValid(value),
    );
  }

  @override
  String toString() => value;
  String toJson() => value;
}
