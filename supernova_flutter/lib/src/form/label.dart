import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import '../localization.dart';
import '../widgets/help_icon.dart';
import 'form_field.dart';

class SupernovaFormFieldLabel extends StatelessWidget {
  const SupernovaFormFieldLabel(
    this.text, {
    super.key,
    this.semanticsLabel,
    required this.isRequired,
    this.textStyle,
    this.valueText,
    this.helpText,
    this.padding,
  });
  SupernovaFormFieldLabel.forCommon(
    SupernovaFormFieldData common, {
    super.key,
    this.semanticsLabel,
    this.textStyle,
    this.valueText,
    this.padding,
  })  : text = common.labelText!,
        isRequired = common.necessity.isRequired,
        helpText = common.helpText;

  final String text;
  final String? semanticsLabel;
  final bool isRequired;
  final TextStyle? textStyle;
  final String? valueText;
  final String? helpText;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? SupernovaFormFieldWidget.horizontalPadding(context),
      child: Row(children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              text: text,
              semanticsLabel: semanticsLabel,
              children: [if (isRequired) _buildRequiredAsterisk(context)],
            ),
            textAlign: TextAlign.left,
            style: textStyle ?? context.textTheme.labelMedium,
          ),
        ),
        if (valueText != null) ...[
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Text(
              valueText!,
              textAlign: TextAlign.right,
              style: SupernovaFormFieldWidget.textStyle(context)
                  .copyWith(color: context.theme.colorScheme.primary),
            ),
          ),
        ],
        if (helpText != null) ...[
          const SizedBox(width: 16),
          HelpIcon(tooltip: helpText!),
        ],
      ]),
    );
  }
}

class RequiredFormFieldExplanation extends StatelessWidget {
  const RequiredFormFieldExplanation({super.key});

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: Padding(
        padding: SupernovaFormFieldWidget.horizontalPadding(context),
        child: Text.rich(
          TextSpan(children: [
            _buildRequiredAsterisk(context),
            TextSpan(
              text: context.supernovaL10n.formFieldLabelRequiredExplanation,
            ),
          ]),
          style: context.textTheme.labelSmall,
        ),
      ),
    );
  }
}

TextSpan _buildRequiredAsterisk(BuildContext context) {
  return TextSpan(
    text: '*',
    semanticsLabel: context.supernovaL10n.formFieldLabelRequiredSemanticsLabel,
    style: TextStyle(color: context.theme.colorScheme.primary),
  );
}
