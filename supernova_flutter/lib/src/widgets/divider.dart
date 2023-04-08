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
    switch (axis) {
      case Axis.horizontal:
        return Divider(height: size);
      case Axis.vertical:
        return VerticalDivider(width: size);
    }
  }
}
