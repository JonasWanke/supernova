import 'package:flutter/material.dart';

import '../localization.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.alarm_outlined, size: 96),
          const SizedBox(height: 16),
          Text(context.supernovaL10n.comingSoonPage),
        ],
      ),
    );
  }
}
