import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_clean_arch/core/widgets/error_dialog.dart';

extension FutureUtil on Future {
  Future<void> showDialogOnError(BuildContext context) async {
    try {
      await this;
    } catch (e, st) {
      if (context.mounted) {
        await showErrorDialog(
          context: context,
          error: e,
          stackTrace: st,
        );
      }
    }
  }

  Future<T> showLoadingDialog<T>(BuildContext context) async {
    late final BuildContext dialogContext;
    final dialogShownCompleter = Completer<void>();

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        if (!dialogShownCompleter.isCompleted) {
          dialogContext = context;
          dialogShownCompleter.complete();
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    await dialogShownCompleter.future;

    try {
      T result = await this;
      if (dialogContext.mounted) {
        Navigator.pop(dialogContext);
      }
      return result;
    } catch (e) {
      if (dialogContext.mounted) {
        Navigator.pop(dialogContext);
      }
      rethrow;
    }
  }
}
