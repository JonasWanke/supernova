import 'package:flutter/material.dart';

class HelpIcon extends StatelessWidget {
  const HelpIcon({super.key, required this.tooltip});

  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(message: tooltip, child: Icon(Icons.help_outlined));
  }
}
