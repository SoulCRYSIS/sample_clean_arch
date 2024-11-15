import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';
import 'package:sample_clean_arch/features/todo/domain/todo_repository.dart';

part 'todo_usecases.g.dart';

// Provide api depend on usage of Presentation layer

TodoRepository _repository(Ref ref) => ref.read(todoRepositoryProvider);

@riverpod
Future<List<TodoEntity>> searchTodosUsecase(Ref ref, String seachWord) async =>
    _repository(ref).searchTodos(seachWord);

@riverpod
Future<List<TodoEntity>> getAllTodosUsecase(Ref ref) async => _repository(ref).searchTodos('');

@riverpod
Future<void> addTodoUsecase(Ref ref, TodoEntity todo) async => _repository(ref).addTodo(todo);

@riverpod
Future<void> updateTodoUsecase(Ref ref, TodoEntity todo) async => _repository(ref).updateTodo(todo);

@riverpod
Future<TodoEntity> getTodoUsecase(Ref ref, String id) async => _repository(ref).getTodo(id);
