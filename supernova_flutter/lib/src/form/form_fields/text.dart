import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

import '../../icons.dart';
import '../../localization.dart';
import '../form.dart';
import '../form_field.dart';
import '../validators.dart';

part 'text.freezed.dart';

/// Whether this password form field is for creating a new password or for
/// entering an existing one.
enum SupernovaPasswordFormFieldRole { create, enter }

@freezed
sealed class SupernovaTextFormField extends SupernovaFormFieldBase<String>
    with _$SupernovaTextFormField {
  const factory SupernovaTextFormField.singleLine(
    TextEditingController controller, {
    required List<String>? autofillHints,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    @Default(TextCapitalization.sentences)
    TextCapitalization textCapitalization,
    SupernovaFormFieldValidator<String>? validator,
    required TextInputAction textInputAction,
    String? hintText,
    FlatIcon? prefixIcon,
    Widget? suffixIcon,
  }) = _SingleLineSupernovaTextFormField;

  const factory SupernovaTextFormField.multiLine(
    TextEditingController controller, {
    required List<String>? autofillHints,
    TextInputType? keyboardType,
    int? maxLength,
    SupernovaFormFieldValidator<String>? validator,
    String? hintText,
  }) = _MultiLineSupernovaTextFormField;

  const factory SupernovaTextFormField.emailAddress(
    TextEditingController controller, {
    required TextInputAction textInputAction,
  }) = _EmailAddressSupernovaTextFormField;

  const factory SupernovaTextFormField.password(
    TextEditingController controller, {
    required SupernovaPasswordFormFieldRole role,
    required TextInputAction textInputAction,
  }) = _PasswordSupernovaTextFormField;

  const SupernovaTextFormField._();

  // Firebase Auth requires at least 6 characters.
  //
  // According to NIST, passwords should be at least 8 characters long.
  // https://pages.nist.gov/800-63-3/sp800-63b.html#5111-memorized-secret-authenticators
  static const minPasswordLength = 8;

  @override
  String? get value {
    return maybeMap(
      password: (_) => controller.text,
      orElse: () => controller.text.trim(),
    ).emptyToNull;
  }

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaTextFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => controller.dispose();
}

class _SupernovaTextFormFieldWidget extends StatelessWidget {
  _SupernovaTextFormFieldWidget(this.common, this.onSubmitted, this.formField)
    : assert(
        common.necessity.when(
          optional: () => true,
          required: (text) => text != null,
        ),
        "SupernovaTextFormField needs a `requiredText` if it's required.",
      );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaTextFormField formField;

  @override
  Widget build(BuildContext context) {
    final autofillHints = formField.map(
      singleLine: (it) => it.autofillHints,
      multiLine: (it) => it.autofillHints,
      emailAddress: (_) => [AutofillHints.email],
      password: (_) => [AutofillHints.password],
    );
    final keyboardType = formField.map(
      singleLine: (it) => it.keyboardType,
      multiLine: (it) => it.keyboardType,
      emailAddress: (_) => TextInputType.emailAddress,
      password: (_) => null,
    );
    final inputFormatters = formField.mapOrNull(
      singleLine: (it) => it.inputFormatters,
    );
    final maxLength = formField.mapOrNull(
      singleLine: (it) => it.maxLength,
      multiLine: (it) => it.maxLength,
    );
    final textCapitalization = formField.maybeMap(
      singleLine: (it) => it.textCapitalization,
      multiLine: (_) => TextCapitalization.sentences,
      orElse: () => TextCapitalization.none,
    );
    final customValidator = formField.map(
      singleLine: (it) => it.validator,
      multiLine: (it) => it.validator,
      emailAddress: (_) => SupernovaFormFieldValidators.buildValidator(
        EmailAddress.isValid,
        context.supernovaL10n.formFieldTextEmailAddressErrorInvalid,
      ),
      password: (it) => switch (it.role) {
        SupernovaPasswordFormFieldRole.create =>
          SupernovaFormFieldValidators.buildValidator<String>(
            (value) =>
                value.characters.length >=
                SupernovaTextFormField.minPasswordLength,
            context.supernovaL10n.formFieldTextPasswordErrorTooShort(
              SupernovaTextFormField.minPasswordLength,
            ),
          ),
        SupernovaPasswordFormFieldRole.enter => null,
      },
    );
    final textInputAction = formField.map(
      singleLine: (it) => it.textInputAction,
      multiLine: (it) => TextInputAction.newline,
      emailAddress: (it) => it.textInputAction,
      password: (it) => it.textInputAction,
    );
    final hintText = formField.map(
      singleLine: (it) =>
          it.hintText ?? context.supernovaL10n.formFieldTextDefaultHint,
      multiLine: (it) =>
          it.hintText ?? context.supernovaL10n.formFieldTextDefaultHint,
      emailAddress: (_) => context.supernovaL10n.formFieldTextEmailAddress,
      password: (_) => context.supernovaL10n.formFieldTextPassword,
    );
    final isPassword = formField.maybeMap(
      password: (_) => true,
      orElse: () => false,
    );
    final prefixIcon = formField.mapOrNull(singleLine: (it) => it.prefixIcon);
    final suffixIcon = formField.mapOrNull(singleLine: (it) => it.suffixIcon);

    return SupernovaFormFieldWidget(
      common,
      child: TextFormField(
        enabled: SupernovaForm.isEnabled(context),
        controller: formField.controller,
        focusNode: common.focusNode,
        autofillHints: autofillHints,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        textCapitalization: textCapitalization,
        validator:
            common.necessity.stringValidator() &
            (_) {
              if (customValidator == null || formField.value == null) {
                return null;
              }
              return customValidator(formField.value!);
            },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: formField.maybeMap(multiLine: (_) => null, orElse: () => 1),
        minLines: formField.maybeMap(multiLine: (_) => 4, orElse: () => null),
        textInputAction: textInputAction,
        style: SupernovaFormFieldWidget.textStyle(context),
        onFieldSubmitted: onSubmitted == null
            ? null
            : (_) => onSubmitted!.call(),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: SupernovaFormFieldWidget.hintTextStyle(context),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SupernovaFormFieldWidget.horizontalPaddingValue(
              context,
            ),
            vertical: 16,
          ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(prefixIcon.outlined, size: 20),
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
        obscureText: isPassword,
        enableSuggestions: !isPassword,
        autocorrect: !isPassword,
      ),
    );
  }
}
