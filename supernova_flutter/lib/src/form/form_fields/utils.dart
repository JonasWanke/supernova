import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import '../../localization.dart';
import '../form_field.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.close_outlined),
      iconSize: 16,
      color: context.theme.colorScheme.primary,
      tooltip: context.supernovaL10n.clear,
    );
  }
}

class PaddedFormError extends StatelessWidget {
  const PaddedFormError(this.errorText, {super.key});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding =
        SupernovaFormFieldWidget.horizontalPaddingValue(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(horizontalPadding, 8, horizontalPadding, 4),
      child: Text(errorText, style: context.theme.textTheme.labelMedium),
    );
  }
}
