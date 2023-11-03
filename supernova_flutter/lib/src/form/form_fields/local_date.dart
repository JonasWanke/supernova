import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart' hide ValueChanged, ValueGetter;

import '../../localization.dart';
import '../form.dart';
import '../form_field.dart';
import '../validators.dart';
import 'utils.dart';

part 'local_date.freezed.dart';

@freezed
class SupernovaLocalDateFormField extends SupernovaFormFieldBase<LocalDate>
    with _$SupernovaLocalDateFormField {
  const factory SupernovaLocalDateFormField(
    ValueNotifier<LocalDate?> selectedDate, {
    ValueGetter<LocalDate?>? firstDate,
    ValueGetter<LocalDate?>? lastDate,
    @Default(SupernovaLocalDateFormField.defaultFormatDate)
        Formatter<LocalDate> formatDate,
    String? hintText,
    String? dialogHelpText,
    @Default(DatePickerMode.day)
        DatePickerMode initialDatePickerMode,
    SupernovaFormFieldValidator<LocalDate>? validator,
  }) = _SupernovaLocalDateFormField;

  const SupernovaLocalDateFormField._();

  static String defaultFormatDate(LocalDate date) =>
      LocalDateFormat.long.format(date);

  @override
  LocalDate? get value => selectedDate.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaLocalDateFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedDate.dispose();
}

class _SupernovaLocalDateFormFieldWidget extends StatelessWidget {
  const _SupernovaLocalDateFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaLocalDateFormField formField;

  @override
  Widget build(BuildContext context) {
    return SupernovaFormFieldWidget(
      common,
      child: FormField<LocalDate?>(
        initialValue: formField.selectedDate.value,
        validator:
            common.necessity.validator<LocalDate>() & formField.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          void setValue(LocalDate? date) {
            state.didChange(date);
            formField.selectedDate.value = date;
          }

          Future<void> onTap() async {
            final date = await _showLocalDatePicker(
              context,
              initialDate: formField.selectedDate.value,
              firstDate: formField.firstDate?.call(),
              lastDate: formField.lastDate?.call(),
              helpText: formField.dialogHelpText,
              initialDatePickerMode: formField.initialDatePickerMode,
            );
            if (date == null) return;

            setValue(date);
          }

          final horizontalPadding =
              SupernovaFormFieldWidget.horizontalPaddingValue(context);
          return InkWell(
            onTap: SupernovaForm.isEnabled(context) ? onTap : null,
            borderRadius: SupernovaFormFieldWidget.borderRadius(context)
                .resolve(context.directionality),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: _buildContent(context)),
                    if (common.necessity.isOptional &&
                        formField.selectedDate.value != null) ...[
                      const SizedBox(width: 16),
                      ClearButton(onPressed: () => setValue(null)),
                      SizedBox(width: horizontalPadding - 16),
                    ] else
                      SizedBox(width: horizontalPadding),
                  ],
                ),
                if (state.hasError) PaddedFormError(state.errorText!),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SupernovaFormFieldWidget.horizontalPaddingValue(context),
        16,
        0,
        16,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              formField.selectedDate.value != null
                  ? formField.formatDate(formField.selectedDate.value!)
                  : formField.hintText ?? context.supernovaL10n.choose,
              style: formField.selectedDate.value == null
                  ? SupernovaFormFieldWidget.hintTextStyle(context)
                  : SupernovaFormFieldWidget.textStyle(context),
            ),
          ),
          const SizedBox(width: 16),
          Icon(
            Icons.calendar_month_outlined,
            size: 16,
            color: context.theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}

Future<LocalDate?> _showLocalDatePicker(
  BuildContext context, {
  LocalDate? initialDate,
  LocalDate? firstDate,
  LocalDate? lastDate,
  String? helpText,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
}) async {
  firstDate ??= LocalDate(1900, 1, 1);
  lastDate ??= LocalDate(2100, 1, 1);
  initialDate ??= LocalDate.today().coerceIn(firstDate, lastDate);
  final date = await showDatePicker(
    context: context,
    initialDate: initialDate.dateTime,
    firstDate: firstDate.dateTime,
    lastDate: lastDate.dateTime,
    helpText: helpText,
    initialDatePickerMode: initialDatePickerMode,
  );
  if (date == null) return null;
  return LocalDate.fromDateTime(date);
}
