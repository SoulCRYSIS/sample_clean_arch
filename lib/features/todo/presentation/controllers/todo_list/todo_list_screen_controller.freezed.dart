// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_screen_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoListScreenState {
  List<TodoEntity> get todos => throw _privateConstructorUsedError;

  /// Create a copy of TodoListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListScreenStateCopyWith<TodoListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListScreenStateCopyWith<$Res> {
  factory $TodoListScreenStateCopyWith(
          TodoListScreenState value, $Res Function(TodoListScreenState) then) =
      _$TodoListScreenStateCopyWithImpl<$Res, TodoListScreenState>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class _$TodoListScreenStateCopyWithImpl<$Res, $Val extends TodoListScreenState>
    implements $TodoListScreenStateCopyWith<$Res> {
  _$TodoListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListScreenStateImplCopyWith<$Res>
    implements $TodoListScreenStateCopyWith<$Res> {
  factory _$$TodoListScreenStateImplCopyWith(_$TodoListScreenStateImpl value,
          $Res Function(_$TodoListScreenStateImpl) then) =
      __$$TodoListScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodoListScreenStateImplCopyWithImpl<$Res>
    extends _$TodoListScreenStateCopyWithImpl<$Res, _$TodoListScreenStateImpl>
    implements _$$TodoListScreenStateImplCopyWith<$Res> {
  __$$TodoListScreenStateImplCopyWithImpl(_$TodoListScreenStateImpl _value,
      $Res Function(_$TodoListScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodoListScreenStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodoListScreenStateImpl implements _TodoListScreenState {
  const _$TodoListScreenStateImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoListScreenState(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListScreenStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  /// Create a copy of TodoListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListScreenStateImplCopyWith<_$TodoListScreenStateImpl> get copyWith =>
      __$$TodoListScreenStateImplCopyWithImpl<_$TodoListScreenStateImpl>(
          this, _$identity);
}

abstract class _TodoListScreenState implements TodoListScreenState {
  const factory _TodoListScreenState({required final List<TodoEntity> todos}) =
      _$TodoListScreenStateImpl;

  @override
  List<TodoEntity> get todos;

  /// Create a copy of TodoListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListScreenStateImplCopyWith<_$TodoListScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
