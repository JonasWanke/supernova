import 'package:flutter/material.dart';

class EmptyStatePageContent extends StatelessWidget {
  const EmptyStatePageContent(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      alignment: Alignment.center,
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}
