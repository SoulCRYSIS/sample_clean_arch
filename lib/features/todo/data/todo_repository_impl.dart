import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_clean_arch/features/todo/data/data_sources/firestore_data_source.dart';
import 'package:sample_clean_arch/features/todo/data/models/todo_model.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';
import 'package:sample_clean_arch/features/todo/domain/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  TodoRepositoryImpl(
    this._ref,
  );

  final Ref _ref;

  late final todoFirestoreDataSource = _ref.read(todoFirestoreDataSourceProvider);

  @override
  Future<List<TodoEntity>> searchTodos(String seachWord) async {
    return (await todoFirestoreDataSource.searchTodos(seachWord)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> addTodo(TodoEntity todo) async =>
      todoFirestoreDataSource.addTodo(TodoModel.fromEntity(todo));

  @override
  Future<void> updateTodo(TodoEntity todo) async =>
      todoFirestoreDataSource.updateTodo(TodoModel.fromEntity(todo));
}
