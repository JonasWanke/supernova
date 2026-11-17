import 'package:material_ui/material_ui.dart';

typedef SupernovaFormFieldValidator<T> = String? Function(T value);

@immutable
abstract final class SupernovaFormFieldValidators {
  static SupernovaFormFieldValidator<T> buildValidator<T>(
    bool Function(T value) validator,
    String message,
  ) =>
      (value) => validator(value) ? null : message;
}

extension FormFieldValidatorSupernovaFlutter<T> on FormFieldValidator<T> {
  FormFieldValidator<T> operator &(SupernovaFormFieldValidator<T>? other) {
    return (value) =>
        this(value) ?? (value == null ? null : other?.call(value));
  }
}
