import 'package:flutter/material.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class SwitchPreferenceTile extends StatelessWidget {
  const SwitchPreferenceTile(
    this.preference, {
    super.key,
    this.isEnabled = true,
    required this.title,
    this.description,
    this.onChanged,
  });

  final Preference<bool> preference;
  final bool isEnabled;
  final String title;
  final Widget? description;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return PreferenceBuilder(
      preference: preference,
      builder: (context, value) => SwitchListTile(
        value: preference.getValue(),
        onChanged: isEnabled
            ? (value) async {
                await preference.setValue(value);
                onChanged?.call(value);
              }
            : null,
        title: Text(title),
        subtitle: description,
      ),
    );
  }
}
