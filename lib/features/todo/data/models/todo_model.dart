import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_clean_arch/features/todo/domain/entites/todo_entity.dart';

part 'todo_model.g.dart';
part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();

  factory TodoModel({
    required String id,
    required String title,
    required String description,
    required bool isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

  factory TodoModel.fromEntity(TodoEntity todo) => TodoModel(
        id: todo.id,
        title: todo.title,
        description: todo.description,
        isCompleted: todo.isCompleted,
      );
  TodoEntity toEntity() => TodoEntity(
        id: id,
        title: title,
        description: description,
        isCompleted: isCompleted,
      );
}
