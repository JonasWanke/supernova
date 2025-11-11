import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../../localization.dart';
import '../form_field.dart';
import 'text.dart';

part 'https_url.freezed.dart';

@freezed
abstract class SupernovaHttpsUrlFormField
    extends SupernovaFormFieldBase<HttpsUrl>
    with _$SupernovaHttpsUrlFormField {
  const factory SupernovaHttpsUrlFormField(
    ValueNotifier<HttpsUrl?> currentValue, {
    required TextInputAction textInputAction,
    String? hintText,
  }) = _SingleLineSupernovaHttpsUrlFormField;

  const SupernovaHttpsUrlFormField._();

  @override
  HttpsUrl? get value => currentValue.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaHttpsUrlFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => currentValue.dispose();
}

class _SupernovaHttpsUrlFormFieldWidget extends HookWidget {
  _SupernovaHttpsUrlFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  ) : assert(
        common.necessity.when(
          optional: () => true,
          required: (text) => text != null,
        ),
        "SupernovaHttpsUrlFormField needs a `requiredText` if it's required.",
      );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaHttpsUrlFormField formField;

  @override
  Widget build(BuildContext context) {
    Result<Option<HttpsUrl>, String> parse(String value) {
      if (value.isBlank) return const Result.ok(Option.none());

      final url = HttpsUrl.tryParse(value.trim());
      if (url == null) {
        return Result.err(context.supernovaL10n.inputUrlErrorInvalid);
      }

      if (!url.value.isScheme('https')) {
        return Result.err(context.supernovaL10n.inputUrlErrorNotHttps);
      }

      if (url.validate().toResult().isErr()) {
        return Result.err(context.supernovaL10n.inputUrlErrorInvalid);
      }

      return Result.ok(Option.some(url));
    }

    final textEditingController = useTextEditingController(
      text: formField.currentValue.value?.toString(),
    );
    useEffect(() {
      void onChanged() => formField.currentValue.value = parse(
        textEditingController.text,
      ).ok().toNullable()?.toNullable();

      textEditingController.addListener(onChanged);
      return () => textEditingController.removeListener(onChanged);
    }, [textEditingController]);

    return SupernovaTextFormField.singleLine(
      textEditingController,
      autofillHints: null,
      keyboardType: TextInputType.url,
      validator: (value) => parse(value).err().toNullable(),
      textInputAction: formField.textInputAction,
      hintText: formField.hintText ?? context.supernovaL10n.inputUrlHint,
    ).build(common, onSubmitted);
  }
}
