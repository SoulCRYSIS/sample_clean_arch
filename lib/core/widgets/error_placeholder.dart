import 'package:flutter/material.dart';
import 'package:sample_clean_arch/core/errors/showable_exception.dart';
import 'package:sample_clean_arch/core/utils/context_util.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder(this.exception, {super.key});

  final Object exception;

  String get title =>
      exception is ShowableException ? (exception as ShowableException).title : 'Unknown Exception';

  String get description => exception is ShowableException
      ? (exception as ShowableException).title
      : exception.toString();

  @override
  Widget build(BuildContext context) {
    debugPrint(exception.toString());
    debugPrintStack(stackTrace: StackTrace.current);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.error),
        ),
        Text(description),
      ],
    );
  }
}
