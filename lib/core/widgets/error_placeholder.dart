import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_clean_arch/core/constants/string_constants.dart';
import 'package:sample_clean_arch/core/errors/showable_exception.dart';
import 'package:sample_clean_arch/core/utils/context_util.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
    final error = this.error;
    final title = error is ShowableException ? error.title : StringConstants.unknownErrorTitle;
    final description = error is ShowableException ? error.description : error.toString();

    if (kDebugMode) {
      debugPrintStack(label: error.toString(), stackTrace: stackTrace);
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.error),
          ),
          Text(description),
        ],
      ),
    );
  }
}
