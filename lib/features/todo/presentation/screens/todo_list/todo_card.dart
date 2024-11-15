import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_clean_arch/core/utils/async_util.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';
import 'package:sample_clean_arch/features/todo/presentation/controllers/todo_list/todo_list_screen_controller.dart';

class TodoCard extends ConsumerWidget {
  const TodoCard(this.todo, {super.key});

  final TodoEntity todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Checkbox(
        value: todo.isCompleted,
        onChanged: (value) {
          if (value == true) {
            ref
                .read(todoListScreenControllerProvider.notifier)
                .markDone(todo.id)
                .showDialogOnError(context);
          }
        },
      ),
      title: Text(todo.title),
      subtitle: Text(todo.description),
    );
  }
}
