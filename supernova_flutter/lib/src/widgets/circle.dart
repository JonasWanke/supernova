import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.diameter});

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(diameter / 2),
      ),
      width: diameter,
      height: diameter,
    );
  }
}
