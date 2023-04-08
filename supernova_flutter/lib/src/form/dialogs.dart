import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart' hide ValueGetter;

import '../localization.dart';

extension BuildContextSupernovaFormDialogs on BuildContext {
  Future<bool> showDiscardChangesDialog() {
    return showDecisionDialog(
      title: supernovaL10n.discardChanges,
      content: Text(supernovaL10n.discardChangesMessage),
      actionConfirm: supernovaL10n.discardChangesActionDiscard,
      actionCancel: supernovaL10n.discardChangesActionKeepEditing,
    );
  }

  Future<bool> showDecisionDialog({
    required String title,
    required Widget content,
    required String actionConfirm,
    required String actionCancel,
  }) async {
    final result = await showDialog<bool>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: content,
        actions: [
          ElevatedButton(
            onPressed: () => context.navigator.pop(true),
            child: Text(actionConfirm),
          ),
          OutlinedButton(
            onPressed: () => context.navigator.pop(false),
            child: Text(actionCancel),
          ),
        ],
      ),
    );
    return result ?? false;
  }
}
