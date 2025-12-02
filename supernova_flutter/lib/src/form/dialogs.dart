import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart' hide ValueGetter;

import '../localization.dart';

extension BuildContextSupernovaFormDialogs on BuildContext {
  Future<bool> showDiscardChangesDialog() {
    return showDecisionDialog(
      title: supernovaL10n.discardChanges,
      content: Text(supernovaL10n.discardChangesMessage),
      actionCancel: supernovaL10n.discardChangesActionKeepEditing,
      actionConfirm: supernovaL10n.discardChangesActionDiscard,
    );
  }

  Future<bool> showDecisionDialog({
    required String title,
    required Widget content,
    required String actionCancel,
    required String actionConfirm,
  }) async {
    final result = await showDialog<bool>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: content,
        actions: [
          TextButton(
            onPressed: () => context.navigator.pop(false),
            child: Text(actionCancel),
          ),
          ElevatedButton(
            onPressed: () => context.navigator.pop(true),
            child: Text(actionConfirm),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  Future<bool> showDeleteConfirmationDialog({
    required String title,
    required String message,
    String? actionCancel,
    String? actionConfirm,
  }) async {
    final result = await showDialog<bool>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 512),
          child: Text(message),
        ),
        actions: [
          TextButton(
            onPressed: () => context.navigator.pop(false),
            child: Text(actionCancel ?? supernovaL10n.actionCancel),
          ),
          ElevatedButton(
            autofocus: true,
            onPressed: () => context.navigator.pop(true),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.error,
              ),
              foregroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.onError,
              ),
            ),
            child: Text(
              actionConfirm ?? supernovaL10n.deleteConfirmationActionConfirm,
            ),
          ),
        ],
      ),
    );
    return result ?? false;
  }
}
