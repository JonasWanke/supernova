import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

class SupernovaFormSection extends StatelessWidget {
  const SupernovaFormSection(
    this.headerText, {
    super.key,
    this.shouldAddSpacing = true,
    required this.children,
  });

  static const verticalSpacing = 32.0;

  final String headerText;
  final bool shouldAddSpacing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          headerText,
          style: context.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        for (final formField in children) ...[
          if (shouldAddSpacing) const SizedBox(height: verticalSpacing),
          formField,
        ],
      ],
    );
  }
}
