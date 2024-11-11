import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_clean_arch/features/todo/data/todo_repository_impl.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';

part 'todo_repository.g.dart';

// Provide api exactly the same as Data layer

@riverpod
TodoRepository todoRepository(Ref ref) => TodoRepositoryImpl(ref);

abstract class TodoRepository {
  Future<List<TodoEntity>> searchTodos(String seachWord);
  Future<void> addTodo(TodoEntity todo);
  Future<void> updateTodo(TodoEntity todo);
}
