import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart';

import 'form.dart';
import 'label.dart';

part 'form_field.freezed.dart';

/// Wrapper for [SupernovaFormFieldBase] that stores common state and configuration.
@immutable
abstract class SupernovaFormField<T extends Object> {
  SupernovaFormField._({
    required FocusNode? focusNode,
    required String? labelText,
    required String? helpText,
    required SupernovaFormFieldNecessity necessity,
    required this.formField,
  }) : common = SupernovaFormFieldData(
          focusNode: focusNode ?? FocusNode(),
          labelText: labelText,
          helpText: helpText,
          necessity: necessity,
        );

  final SupernovaFormFieldData common;
  final SupernovaFormFieldBase<T> formField;

  T? get rawValue => formField.value;

  Widget build({VoidCallback? onSubmitted}) =>
      formField.build(common, onSubmitted);

  void dispose() {
    common.focusNode.dispose();
    formField.dispose();
  }
}

RequiredSupernovaFormField<T> useRequiredSupernovaFormField<T extends Object>({
  String? labelText,
  String? helpText,
  required String? requiredText,
  required SupernovaFormFieldBase<T> formField,
}) {
  return RequiredSupernovaFormField(
    focusNode: useFocusNode(),
    labelText: labelText,
    helpText: helpText,
    requiredText: requiredText,
    formField: formField,
  );
}

/// `requiredText` may only be `null` if [formField]'s `value` is not null
/// initially.
class RequiredSupernovaFormField<T extends Object>
    extends SupernovaFormField<T> {
  RequiredSupernovaFormField({
    super.focusNode,
    super.labelText,
    super.helpText,
    required String? requiredText,
    required super.formField,
  })  : assert((requiredText == null).implies(formField.value != null)),
        super._(necessity: SupernovaFormFieldNecessity.required(requiredText));

  T get value => rawValue!;
}

OptionalSupernovaFormField<T> useOptionalSupernovaFormField<T extends Object>({
  String? labelText,
  String? helpText,
  required SupernovaFormFieldBase<T> formField,
}) {
  return OptionalSupernovaFormField(
    focusNode: useFocusNode(),
    labelText: labelText,
    helpText: helpText,
    formField: formField,
  );
}

OptionalSupernovaFormField<T>
    useMaybeRequiredSupernovaFormField<T extends Object>({
  String? labelText,
  String? helpText,
  required SupernovaFormFieldNecessity necessity,
  required SupernovaFormFieldBase<T> formField,
}) {
  return OptionalSupernovaFormField.maybeRequired(
    focusNode: useFocusNode(),
    labelText: labelText,
    helpText: helpText,
    necessity: necessity,
    formField: formField,
  );
}

class OptionalSupernovaFormField<T extends Object>
    extends SupernovaFormField<T> {
  OptionalSupernovaFormField({
    super.focusNode,
    super.labelText,
    super.helpText,
    required super.formField,
  }) : super._(necessity: const SupernovaFormFieldNecessity.optional());
  OptionalSupernovaFormField.maybeRequired({
    super.focusNode,
    super.labelText,
    super.helpText,
    required super.necessity,
    required super.formField,
  }) : super._();

  T? get value => rawValue;
}

@freezed
class SupernovaFormFieldData with _$SupernovaFormFieldData {
  const factory SupernovaFormFieldData({
    required FocusNode focusNode,
    String? labelText,
    String? helpText,
    required SupernovaFormFieldNecessity necessity,
  }) = _SupernovaFormFieldData;
}

@freezed
class SupernovaFormFieldNecessity with _$SupernovaFormFieldNecessity {
  const factory SupernovaFormFieldNecessity.optional() =
      _OptionalSupernovaFormFieldNecessity;
  const factory SupernovaFormFieldNecessity.required(String? text) =
      _RequiredSupernovaFormFieldNecessity;

  const SupernovaFormFieldNecessity._();

  bool get isOptional => map(optional: (_) => true, required: (_) => false);
  bool get isRequired => !isOptional;
  String? get requiredText =>
      when(optional: () => null, required: (text) => text);

  FormFieldValidator<T> validator<T extends Object>() {
    return (value) => value == null ? requiredText : null;
  }

  FormFieldValidator<String> stringValidator() {
    return (value) => value == null || value.isBlank ? requiredText : null;
  }
}

/// The base class for any form field.
@immutable
abstract class SupernovaFormFieldBase<T extends Object> {
  const SupernovaFormFieldBase();

  T? get value;

  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted);

  void dispose();
}

/// Wrapper widget for form fields that adds an optional label and wraps the
/// child in a [FancyCard].
class SupernovaFormFieldWidget extends StatelessWidget {
  const SupernovaFormFieldWidget(
    this.common, {
    super.key,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  static const elevation = 4.0;

  static BorderRadiusGeometry borderRadius(BuildContext context) {
    final shape = context.theme.cardTheme.shape;
    if (shape is RoundedRectangleBorder) return shape.borderRadius;
    return BorderRadius.zero;
  }

  static double horizontalPaddingValue(BuildContext context) =>
      borderRadius(context).resolve(context.directionality).topLeft.x;

  static EdgeInsets horizontalPadding(BuildContext context) =>
      EdgeInsets.symmetric(horizontal: horizontalPaddingValue(context));

  static TextStyle textStyle(BuildContext context) {
    final color = SupernovaForm.isEnabled(context)
        ? null
        : context.theme.colorScheme.background.disabledOnColor;
    return context.theme.textTheme.bodyLarge!.copyWith(color: color);
  }

  static TextStyle hintTextStyle(BuildContext context) {
    return textStyle(context).copyWith(
      color: context.theme.colorScheme.background.mediumEmphasisOnColor,
    );
  }

  static const labelSpacing = 8.0;

  final SupernovaFormFieldData common;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (common.labelText != null) ...[
          SupernovaFormFieldLabel.forCommon(common),
          const SizedBox(height: labelSpacing),
        ],
        Card(child: Padding(padding: padding, child: child)),
      ],
    );
  }
}
