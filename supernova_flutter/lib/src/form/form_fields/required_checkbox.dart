import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../form.dart';
import '../form_field.dart';

part 'required_checkbox.freezed.dart';

@freezed
abstract class SupernovaRequiredCheckboxFormField
    extends SupernovaFormFieldBase<bool>
    with _$SupernovaRequiredCheckboxFormField {
  const factory SupernovaRequiredCheckboxFormField(
    ValueNotifier<bool> currentValue, {
    required String message,
    EdgeInsets? contentPadding,
    TextStyle? textStyle,
  }) = _SupernovaRequiredCheckboxFormField;

  const SupernovaRequiredCheckboxFormField._();

  @override
  bool? get value => currentValue.value ? true : null;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaRequiredCheckboxFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => currentValue.dispose();
}

class _SupernovaRequiredCheckboxFormFieldWidget extends HookWidget {
  _SupernovaRequiredCheckboxFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  ) : assert(
          common.necessity
              .when(optional: () => false, required: (text) => text != null),
          'SupernovaRequiredCheckboxFormField must be required with a '
          '`requiredText`.',
        );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaRequiredCheckboxFormField formField;

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: formField.currentValue.value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => value! ? null : common.necessity.requiredText!,
      builder: (field) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: formField.currentValue.value,
            onChanged: SupernovaForm.isEnabled(context)
                ? (value) {
                    field.didChange(value);
                    formField.currentValue.value = value!;
                  }
                : null,
            title: Text(formField.message, style: formField.textStyle),
            contentPadding: formField.contentPadding,
          ),
          if (field.errorText != null)
            Text(field.errorText!, style: context.textTheme.labelMedium),
        ],
      ),
    );
  }
}
