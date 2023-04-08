import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../form.dart';
import '../form_field.dart';
import '../label.dart';

part 'slider.freezed.dart';

@freezed
class SupernovaSliderFormField<T extends Object>
    extends SupernovaFormFieldBase<T> with _$SupernovaSliderFormField<T> {
  const factory SupernovaSliderFormField(
    ValueNotifier<T> selectedValue, {
    required List<T> values,
    Formatter<T>? labelGetter,
    required Formatter<T> descriptionGetter,
    String? minDescription,
    String? maxDescription,
  }) = _SupernovaSliderFormField;

  const SupernovaSliderFormField._();

  @override
  T? get value => selectedValue.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaSliderFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedValue.dispose();
}

class _SupernovaSliderFormFieldWidget<T extends Object> extends HookWidget {
  _SupernovaSliderFormFieldWidget(this.common, this.onSubmitted, this.formField)
      : assert(
          common.necessity.isRequired,
          'SupernovaSliderFormField only supports required.',
        );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaSliderFormField<T> formField;

  @override
  Widget build(BuildContext context) {
    useListenable(formField.selectedValue);
    return Padding(
      padding: SupernovaFormFieldWidget.horizontalPadding(context),
      child: Column(children: [
        _buildHeader(),
        const SizedBox(height: 8),
        _buildSlider(context),
        const SizedBox(height: 8),
        _buildFooter(context),
      ]),
    );
  }

  Widget _buildHeader() {
    return SupernovaFormFieldLabel.forCommon(
      common,
      valueText: formField.descriptionGetter(formField.selectedValue.value),
      padding: EdgeInsets.zero,
    );
  }

  Widget _buildSlider(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
        trackShape: _SupernovaSliderTrackShape(),
      ),
      child: Slider(
        value:
            formField.values.indexOf(formField.selectedValue.value).toDouble(),
        onChanged: SupernovaForm.isEnabled(context)
            ? (value) =>
                formField.selectedValue.value = formField.values[value.toInt()]
            : null,
        onChangeEnd: onSubmitted == null ? null : (_) => onSubmitted!.call(),
        min: 0,
        max: formField.values.lastIndex.toDouble(),
        divisions: formField.values.lastIndex,
        label: (formField.labelGetter ?? formField.descriptionGetter)
            .call(formField.selectedValue.value),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
          formField.minDescription ??
              formField.descriptionGetter(formField.values.first),
          style: context.textTheme.labelSmall,
        ),
      ),
      Expanded(
        child: Text(
          formField.maxDescription ??
              formField.descriptionGetter(formField.values.last),
          style: context.textTheme.labelSmall,
          textAlign: TextAlign.end,
        ),
      ),
    ]);
  }
}

class _SupernovaSliderTrackShape extends RoundedRectSliderTrackShape {
  const _SupernovaSliderTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final height = sliderTheme.trackHeight! / 2;
    final left = offset.dx;
    final top = offset.dy + (parentBox.size.height - height) / 2;
    final width = parentBox.size.width;
    return Rect.fromLTWH(left, top, width, height);
  }
}
