import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_clean_arch/core/injections/firebase.dart';
import 'package:sample_clean_arch/features/todo/data/models/todo_model.dart';

part 'firestore_data_source.g.dart';

@riverpod
TodoFirestoreDataSource todoFirestoreDataSource(Ref ref) => TodoFirestoreDataSource._(ref);

class TodoFirestoreDataSource {
  TodoFirestoreDataSource._(this._ref);

  final Ref _ref;

  late final todoCollection = _ref.read(firebaseFirestoreProvider).collection('todos');

  Future<List<TodoModel>> searchTodos(String seachWord) async {
    final querySnapshot = await todoCollection.get();
    final todos = querySnapshot.docs.map((doc) => TodoModel.fromJson(doc.data())).toList();

    return todos
        .where((element) =>
            element.title.contains(seachWord) || element.description.contains(seachWord))
        .toList();
  }

  Future<void> addTodo(TodoModel todo) async => todoCollection.doc(todo.id).set(todo.toJson());

  Future<void> updateTodo(TodoModel todo) async =>
      todoCollection.doc(todo.id).update(todo.toJson());
}
