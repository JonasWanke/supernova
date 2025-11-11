import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../../hooks.dart';
import '../../localization.dart';
import '../../widgets/async.dart';
import '../form_field.dart';
import 'text.dart';
import 'utils.dart';

part 'autocomplete.freezed.dart';

typedef SupernovaAutocompleteOptionsBuilder<T extends Object> =
    Future<List<T>> Function(TextEditingValue textEditingValue);

@freezed
abstract class SupernovaAutocompleteFormField<
  T extends Object,
  R extends Object
>
    extends SupernovaFormFieldBase<R>
    with _$SupernovaAutocompleteFormField<T, R> {
  const factory SupernovaAutocompleteFormField(
    TextEditingController textEditingController,
    ValueNotifier<R?> selectedItem, {
    required R Function(T) valueSelector,
    required List<String>? autofillHints,
    required TextInputAction textInputAction,
    String? hintText,
    @Default(true) bool shouldDebounce,
    required SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
    required AutocompleteOptionToString<T> displayStringForOption,
    DataWidgetBuilder<T>? optionViewBuilder,
    Widget? optionFooter,
  }) = _SupernovaAutocompleteFormField;

  const SupernovaAutocompleteFormField._();

  @override
  R? get value => selectedItem.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaAutocompleteFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() {
    textEditingController.dispose();
    selectedItem.dispose();
  }
}

class _SupernovaAutocompleteFormFieldWidget<T extends Object, R extends Object>
    extends HookWidget {
  _SupernovaAutocompleteFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  ) : assert(
        common.necessity.when(
          optional: () => true,
          required: (text) => text != null,
        ),
        "SupernovaAutocompleteFormField needs a `requiredText` if it's "
        'required.',
      );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaAutocompleteFormField<T, R> formField;

  @override
  Widget build(BuildContext context) {
    final key = useGlobalKey();

    // We don't want to cause a rebuild when these values change.
    final currentGeneration = useRef(0);
    final lastOptions = useRef<List<T>>([]);

    useEffect(() {
      var previousText = formField.textEditingController.text;
      void onTextChanged() {
        if (previousText == formField.textEditingController.text) return;

        // When editing the text and then dismissing the autocomplete
        // dropdown, the old selection would still be cached, but out of sync
        // with the text.
        formField.selectedItem.value = null;
        previousText = formField.textEditingController.text;
      }

      formField.textEditingController.addListener(onTextChanged);
      return () =>
          formField.textEditingController.removeListener(onTextChanged);
    }, [formField.textEditingController]);

    final shouldShowClearButton = useListenableSelector(
      formField.textEditingController,
      () =>
          common.necessity.isOptional &&
          formField.textEditingController.text.isNotEmpty,
    );
    final suffixIcon = shouldShowClearButton
        ? ClearButton(
            onPressed: () {
              formField.selectedItem.value = null;
              formField.textEditingController.clear();
            },
          )
        : null;

    Future<List<T>> optionsBuilder(TextEditingValue textEditingValue) async {
      if (formField.shouldDebounce) {
        // Debounce by 300 ms.
        final generation = ++currentGeneration.value;
        await Future<void>.delayed(300.milliseconds);
        if (generation != currentGeneration.value) return lastOptions.value;
      }

      final options = await formField.optionsBuilder(textEditingValue);
      lastOptions.value = options;
      return options;
    }

    return RawAutocomplete<T>(
      key: key,
      optionsViewBuilder: (context, onSelected, options) {
        // Workaround: https://github.com/flutter/flutter/issues/78746#issuecomment-1055988296
        final renderBox = key.currentContext!.findRenderObject()! as RenderBox;
        return _AutocompleteOptions<T>(
          width: renderBox.size.width,
          onSelected: onSelected,
          options: options,
          builder: (context, it) =>
              formField.optionViewBuilder?.call(it) ??
              ListTile(title: Text(formField.displayStringForOption(it))),
          footer: formField.optionFooter,
        );
      },
      optionsBuilder: optionsBuilder,
      displayStringForOption: formField.displayStringForOption,
      focusNode: common.focusNode,
      onSelected: (value) =>
          formField.selectedItem.value = formField.valueSelector(value),
      textEditingController: formField.textEditingController,
      fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
        return SupernovaTextFormField.singleLine(
          controller,
          autofillHints: formField.autofillHints,
          textInputAction: formField.textInputAction,
          hintText: formField.hintText ?? context.supernovaL10n.choose,
          suffixIcon: suffixIcon,
        ).build(common, () {
          onFieldSubmitted();
          onSubmitted?.call();
        });
      },
    );
  }
}

/// Customized version of flutter/material's [_AutocompleteOptions].
class _AutocompleteOptions<T extends Object> extends StatelessWidget {
  const _AutocompleteOptions({
    super.key,
    required this.width,
    required this.onSelected,
    required this.options,
    required this.builder,
    this.footer,
  });

  final double width;
  final AutocompleteOnSelected<T> onSelected;
  final Iterable<T> options;
  final Widget Function(BuildContext context, T option) builder;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        elevation: 6,
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(width, 384)),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: options.length + (footer != null ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == options.length) return footer!;
              return _buildItem(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    final option = options.elementAt(index);
    return InkWell(
      onTap: () => onSelected(option),
      child: Builder(
        builder: (context) {
          final child = builder(context, option);
          if (AutocompleteHighlightedOption.of(context) != index) return child;

          SchedulerBinding.instance.addPostFrameCallback(
            (timeStamp) => Scrollable.ensureVisible(context, alignment: 0.5),
          );
          return ColoredBox(color: context.theme.focusColor, child: child);
        },
      ),
    );
  }
}
