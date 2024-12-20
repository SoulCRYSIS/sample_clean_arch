import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';

@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required String id,
    required String title,
    required String description,
    required bool isCompleted,
  }) = _TodoEntity;
}
