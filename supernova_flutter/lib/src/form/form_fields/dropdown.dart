import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../../localization.dart';
import '../form.dart';
import '../form_field.dart';

part 'dropdown.freezed.dart';

@freezed
abstract class SupernovaDropdownFormField<T extends Object>
    extends SupernovaFormFieldBase<T> with _$SupernovaDropdownFormField<T> {
  const factory SupernovaDropdownFormField(
    ValueNotifier<T?> selectedItem, {
    required List<DropdownMenuItem<T>> items,
  }) = _SupernovaDropdownFormField;

  const SupernovaDropdownFormField._();

  @override
  T? get value => selectedItem.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      SupernovaDropdownFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedItem.dispose();
}

class SupernovaDropdownFormFieldWidget<T extends Object> extends HookWidget {
  const SupernovaDropdownFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField, {
    super.key,
  });

  static const iconSize = 12.0;

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaDropdownFormField<T> formField;

  @override
  Widget build(BuildContext context) {
    useListenable(formField.selectedItem);

    Future<void> onChanged(_ClearableDropdownSelection<T>? value) async {
      if (value == null) return;

      formField.selectedItem.value = value.whenOrNull(value: (it) => it);
      onSubmitted?.call();
    }

    return SupernovaFormFieldWidget(
      common,
      padding: EdgeInsets.symmetric(
        horizontal: SupernovaFormFieldWidget.horizontalPaddingValue(context),
        vertical: 4,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<_ClearableDropdownSelection<T>>(
          items: [
            if (common.necessity.isOptional &&
                formField.selectedItem.value != null)
              DropdownMenuItem(
                value: const _ClearableDropdownSelection.clear(),
                child: Text(context.supernovaL10n.clear),
              ),
            for (final item in formField.items) _buildItem(context, item),
          ],
          initialValue: formField.selectedItem.value != null
              ? _ClearableDropdownSelection.value(formField.selectedItem.value!)
              : null,
          style: SupernovaFormFieldWidget.textStyle(context),
          hint: Text(
            context.supernovaL10n.choose,
            style: SupernovaFormFieldWidget.hintTextStyle(context),
          ),
          onChanged: SupernovaForm.isEnabled(context) ? onChanged : null,
          iconSize: SupernovaDropdownFormFieldWidget.iconSize,
          isExpanded: true,
          focusNode: common.focusNode,
          decoration: const InputDecoration(border: InputBorder.none),
          validator: common.necessity.validator(),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }

  DropdownMenuItem<_ClearableDropdownSelection<T>> _buildItem(
    BuildContext context,
    DropdownMenuItem<T> item,
  ) {
    return item.copyWith(
      value: _ClearableDropdownSelection.value(item.value!),
      child: item.enabled
          ? item.child
          : DefaultTextStyle.merge(
              style: TextStyle(
                color: context.theme.colorScheme.surface.disabledOnColor,
              ),
              child: item.child,
            ),
    );
  }
}

@freezed
class _ClearableDropdownSelection<T extends Object>
    with _$ClearableDropdownSelection<T> {
  const factory _ClearableDropdownSelection.value(T value) =
      _ValueClearableDropdownSelection;
  const factory _ClearableDropdownSelection.clear() =
      _ClearClearableDropdownSelection;
  const _ClearableDropdownSelection._();
}

extension<T> on DropdownMenuItem<T> {
  DropdownMenuItem<R> copyWith<R>({required R? value, Widget? child}) {
    return DropdownMenuItem(
      onTap: onTap,
      value: value,
      enabled: enabled,
      alignment: alignment,
      child: child ?? this.child,
    );
  }
}
