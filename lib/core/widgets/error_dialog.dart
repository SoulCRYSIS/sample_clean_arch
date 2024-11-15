import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_clean_arch/core/constants/string_constants.dart';
import 'package:sample_clean_arch/core/errors/showable_exception.dart';
import 'package:sample_clean_arch/core/themes/text_style.dart';
import 'package:sample_clean_arch/core/utils/context_util.dart';

Future<void> showErrorDialog({
  required BuildContext context,
  required dynamic error,
  required StackTrace stackTrace,
}) async {
  final colorScheme = context.colorScheme;
  final title = error is ShowableException ? error.title : StringConstants.unknownErrorTitle;
  final description = error is ShowableException ? error.description : error.toString();

  if (kDebugMode) {
    debugPrintStack(label: error.toString(), stackTrace: stackTrace);
  }

  await showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: colorScheme.errorContainer,
      surfaceTintColor: colorScheme.errorContainer,
      icon: Icon(
        Icons.warning_rounded,
        size: 32,
        color: colorScheme.error,
      ),
      title: Text(
        title,
        style: context.textTheme.headlineSmall?.textColor(colorScheme.error),
      ),
      content: Text(
        description,
        textAlign: TextAlign.center,
        style: context.textTheme.bodyMedium?.textColor(colorScheme.onErrorContainer),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('ตกลง'),
        ),
      ],
    ),
  );
}
