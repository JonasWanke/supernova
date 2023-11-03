import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueChanged, ValueGetter;

import '../hooks.dart';

typedef SupernovaFormBuilder = Widget Function(
  AsyncVoidCallback submit,
  // ignore: avoid_positional_boolean_parameters
  bool isSubmitting,
);

typedef StatelessSupernovaFormBuilder = Widget Function(
  AsyncVoidCallback submit,
);

class SupernovaForm extends HookWidget {
  const SupernovaForm({
    super.key,
    this.formKey,
    this.extraValidator,
    required this.submit,
    this.shouldPopAfterSubmit = false,
    required this.builder,
  });

  static Widget stateless({
    GlobalKey<FormState>? formKey,
    required bool isEnabled,
    ValueGetter<String?>? extraValidator,
    required AsyncVoidCallback submit,
    bool shouldPopAfterSubmit = false,
    required StatelessSupernovaFormBuilder builder,
  }) {
    return _StatelessSupernovaForm(
      formKey: formKey,
      isEnabled: isEnabled,
      extraValidator: extraValidator,
      submit: submit,
      shouldPopAfterSubmit: shouldPopAfterSubmit,
      builder: builder,
    );
  }

  static Widget disableSubtree({required Widget child}) =>
      _SupernovaFormIsEnabled(isEnabled: false, child: child);

  final GlobalKey<FormState>? formKey;
  final ValueGetter<String?>? extraValidator;
  final AsyncVoidCallback submit;
  final bool shouldPopAfterSubmit;
  final SupernovaFormBuilder builder;

  @override
  Widget build(BuildContext context) {
    final isSubmitting = useState(false);

    Future<void> doSubmit() async {
      isSubmitting.value = true;
      await submit();

      if (shouldPopAfterSubmit) {
        if (context.mounted) context.navigator.pop();
      } else {
        isSubmitting.value = false;
      }
    }

    return _StatelessSupernovaForm(
      isEnabled: !isSubmitting.value,
      extraValidator: extraValidator,
      submit: doSubmit,
      builder: (submit) => builder(submit, isSubmitting.value),
    );
  }

  static bool isEnabled(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<_SupernovaFormIsEnabled>()
            ?.isEnabled ??
        true;
  }

  static bool validate(BuildContext context) => context.form!.validate();
}

class _StatelessSupernovaForm extends HookWidget {
  const _StatelessSupernovaForm({
    this.formKey,
    required this.isEnabled,
    this.extraValidator,
    required this.submit,
    this.shouldPopAfterSubmit = false,
    required this.builder,
  });

  final GlobalKey<FormState>? formKey;
  final bool isEnabled;
  final ValueGetter<String?>? extraValidator;
  final AsyncVoidCallback submit;
  final bool shouldPopAfterSubmit;
  final StatelessSupernovaFormBuilder builder;

  @override
  Widget build(BuildContext context) {
    final fallbackFormKey = useGlobalKey<FormState>();
    final formKey = this.formKey ?? fallbackFormKey;

    Future<void> doSubmit() async {
      if (!formKey.currentState!.validate()) return;

      final extraValidationResult = extraValidator?.call();
      if (extraValidationResult != null) {
        context.showSimpleSnackBar(extraValidationResult);
        return;
      }

      await submit();
    }

    return Form(
      key: formKey,
      child: _SupernovaFormIsEnabled(
        isEnabled: isEnabled,
        child: builder(doSubmit),
      ),
    );
  }
}

class _SupernovaFormIsEnabled extends InheritedWidget {
  const _SupernovaFormIsEnabled({
    required this.isEnabled,
    required super.child,
  });

  final bool isEnabled;

  @override
  bool updateShouldNotify(_SupernovaFormIsEnabled oldWidget) =>
      isEnabled != oldWidget.isEnabled;
}
