import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../form_field.dart';
import '../validators.dart';
import 'text.dart';

part 'number.freezed.dart';

@freezed
abstract class SupernovaNumberFormField extends SupernovaFormFieldBase<int>
    with _$SupernovaNumberFormField {
  const factory SupernovaNumberFormField.amount(
    ValueNotifier<int?> currentValue, {
    ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
    required TextInputAction textInputAction,
    String? hintText,
  }) = _SingleLineSupernovaNumberFormField;

  const SupernovaNumberFormField._();

  @override
  int? get value => currentValue.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaNumberFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => currentValue.dispose();
}

class _SupernovaNumberFormFieldWidget extends HookWidget {
  _SupernovaNumberFormFieldWidget(this.common, this.onSubmitted, this.formField)
      : assert(
          common.necessity
              .when(optional: () => true, required: (text) => text != null),
          "SupernovaNumberFormField needs a `requiredText` if it's required.",
        );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaNumberFormField formField;

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(
      text: formField.currentValue.value?.toString(),
    );
    useEffect(
      () {
        void onChanged() {
          formField.currentValue.value =
              textEditingController.text.emptyToNull?.toInt();
        }

        textEditingController.addListener(onChanged);
        return () => textEditingController.removeListener(onChanged);
      },
      [textEditingController],
    );

    return SupernovaTextFormField.singleLine(
      textEditingController,
      autofillHints: null,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: formField.max == null
          ? null
          : SupernovaFormFieldValidators.buildValidator(
              (value) => value.toInt() <= formField.max!.max,
              formField.max!.tooLargeErrorFormatter(
                NumberFormat.decimalPattern().format(formField.max!.max),
              ),
            ),
      textInputAction: formField.textInputAction,
      hintText: formField.hintText,
    ).build(common, onSubmitted);
  }
}
