import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.diameter, this.backgroundColor});

  final double diameter;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? context.theme.colorScheme.primary,
      ),
      width: diameter,
      height: diameter,
    );
  }
}
