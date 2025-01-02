import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:chrono/chrono.dart';
import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart' hide ValueChanged, ValueGetter;

import '../../localization.dart';
import '../form.dart';
import '../form_field.dart';
import '../validators.dart';
import 'utils.dart';

part 'date.freezed.dart';

@freezed
class SupernovaDateFormField extends SupernovaFormFieldBase<Date>
    with _$SupernovaDateFormField {
  const factory SupernovaDateFormField(
    ValueNotifier<Date?> selectedDate, {
    ValueGetter<Date?>? firstDate,
    ValueGetter<Date?>? lastDate,
    @Default(SupernovaDateFormField.defaultFormatDate)
    Formatter<Date> formatDate,
    String? hintText,
    String? dialogHelpText,
    @Default(DatePickerMode.day) DatePickerMode initialDatePickerMode,
    SupernovaFormFieldValidator<Date>? validator,
  }) = _SupernovaDateFormField;

  const SupernovaDateFormField._();

  // TODO(JonasWanke): localization
  static String defaultFormatDate(Date date) => date.toString();

  @override
  Date? get value => selectedDate.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaDateFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedDate.dispose();
}

class _SupernovaDateFormFieldWidget extends StatelessWidget {
  const _SupernovaDateFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaDateFormField formField;

  @override
  Widget build(BuildContext context) {
    return SupernovaFormFieldWidget(
      common,
      child: FormField<Date?>(
        initialValue: formField.selectedDate.value,
        validator: common.necessity.validator<Date>() & formField.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          void setValue(Date? date) {
            state.didChange(date);
            formField.selectedDate.value = date;
          }

          Future<void> onTap() async {
            final date = await _showDatePicker(
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

Future<Date?> _showDatePicker(
  BuildContext context, {
  Date? initialDate,
  Date? firstDate,
  Date? lastDate,
  String? helpText,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
}) async {
  firstDate ??= const Year(1900).firstDay;
  lastDate ??= const Year(2100).lastDay;
  initialDate ??= Date.todayInLocalZone().coerceIn(firstDate, lastDate);
  final date = await showDatePicker(
    context: context,
    initialDate: initialDate.atMidnight.asCoreDateTimeInLocalZone,
    firstDate: firstDate.atMidnight.asCoreDateTimeInLocalZone,
    lastDate: lastDate.atMidnight.asCoreDateTimeInLocalZone,
    helpText: helpText,
    initialDatePickerMode: initialDatePickerMode,
  );
  if (date == null) return null;
  return date.asChronoDate;
}
