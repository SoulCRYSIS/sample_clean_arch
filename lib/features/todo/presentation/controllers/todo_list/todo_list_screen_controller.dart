import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_clean_arch/core/errors/showable_exception.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';
import 'package:sample_clean_arch/features/todo/domain/todo_usecases.dart';

part 'todo_list_screen_controller.freezed.dart';
part 'todo_list_screen_controller.g.dart';

@riverpod
class TodoListScreenController extends _$TodoListScreenController {
  @override
  Future<TodoListScreenState> build() async {
    return TodoListScreenState(todos: await ref.watch(getAllTodosUsecaseProvider.future));
  }

  Future<void> searchTodos(String seachWord) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () async => TodoListScreenState(
        todos: await ref.watch(searchTodosUsecaseProvider(seachWord).future),
      ),
    );
  }

  Future<void> updateTodo(TodoEntity todo) async {
    state = await AsyncValue.guard(
      () async {
        try {
          final todos = state.value!.todos.map((e) => e.id == todo.id ? todo : e).toList();
          await ref.watch(updateTodoUsecaseProvider(todo).future);
          return TodoListScreenState(todos: todos);
        } on FirebaseException catch (_) {
          throw ServerProblemException();
        }
      },
    );
  }

  Future<void> markDone(String id) async {
    try {
      final todo = state.value!.todos
          .firstWhere(
            (element) => element.id == id,
          )
          .copyWith(isCompleted: true);
      final todos = state.value!.todos.map((e) => e.id == todo.id ? todo : e).toList();
      await ref.watch(updateTodoUsecaseProvider(todo).future);
      state = AsyncData(TodoListScreenState(todos: todos));
    } on FirebaseException catch (_) {
      throw ServerProblemException();
    }
  }
}

@freezed
class TodoListScreenState with _$TodoListScreenState {
  const factory TodoListScreenState({
    required List<TodoEntity> todos,
  }) = _TodoListScreenState;
}
