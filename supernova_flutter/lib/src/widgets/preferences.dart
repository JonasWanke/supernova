import 'package:flutter/material.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class SwitchPreferenceTile extends StatelessWidget {
  const SwitchPreferenceTile(
    this.preference, {
    super.key,
    required this.title,
    this.description,
    this.onChanged,
  });

  final Preference<bool> preference;
  final String title;
  final Widget? description;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return PreferenceBuilder(
      preference: preference,
      builder: (context, value) => SwitchListTile(
        value: preference.getValue(),
        onChanged: (value) async {
          await preference.setValue(value);
          onChanged?.call(value);
        },
        title: Text(title),
        subtitle: description,
      ),
    );
  }
}
