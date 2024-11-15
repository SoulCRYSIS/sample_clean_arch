import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';
import 'package:sample_clean_arch/features/todo/domain/todo_usecases.dart';
import 'package:uuid/uuid.dart';

part 'todo_form_screen_controller.g.dart';

@riverpod
class TodoFormScreenController extends _$TodoFormScreenController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Future<TodoEntity?> build({String? editFromId}) async {
    if (editFromId != null) {
      final todo = await ref.watch(getTodoUsecaseProvider(editFromId).future);
      titleController.text = todo.title;
      descriptionController.text = todo.description;
      return todo;
    }
    return null;
  }

  Future<void> updateTitle(String title) async {
    final todo = state.value!.copyWith(title: title);
    await ref.watch(updateTodoUsecaseProvider(todo).future);
    state = AsyncData(todo);
  }

  Future<void> updateDescription(String description) async {
    final todo = state.value!.copyWith(description: description);
    await ref.watch(updateTodoUsecaseProvider(todo).future);
    state = AsyncData(todo);
  }

  Future<void> addTodo() async {
    await ref.watch(addTodoUsecaseProvider(
      TodoEntity(
        id: const Uuid().v8(),
        title: titleController.text,
        description: descriptionController.text,
        isCompleted: false,
      ),
    ).future);
  }
}
