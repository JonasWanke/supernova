import 'package:flutter/material.dart';

class SupernovaDivider extends StatelessWidget {
  const SupernovaDivider({
    super.key,
    this.size = 48,
    this.axis = Axis.horizontal,
  });

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return switch (axis) {
      Axis.horizontal => Divider(height: size),
      Axis.vertical => VerticalDivider(width: size)
    };
  }
}
