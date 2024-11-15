// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_form_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoFormScreenControllerHash() =>
    r'02b3640ca3ea7cdd599190a0a44ab745296025d1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TodoFormScreenController
    extends BuildlessAutoDisposeAsyncNotifier<TodoEntity?> {
  late final String? editFromId;

  FutureOr<TodoEntity?> build({
    String? editFromId,
  });
}

/// See also [TodoFormScreenController].
@ProviderFor(TodoFormScreenController)
const todoFormScreenControllerProvider = TodoFormScreenControllerFamily();

/// See also [TodoFormScreenController].
class TodoFormScreenControllerFamily extends Family<AsyncValue<TodoEntity?>> {
  /// See also [TodoFormScreenController].
  const TodoFormScreenControllerFamily();

  /// See also [TodoFormScreenController].
  TodoFormScreenControllerProvider call({
    String? editFromId,
  }) {
    return TodoFormScreenControllerProvider(
      editFromId: editFromId,
    );
  }

  @override
  TodoFormScreenControllerProvider getProviderOverride(
    covariant TodoFormScreenControllerProvider provider,
  ) {
    return call(
      editFromId: provider.editFromId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoFormScreenControllerProvider';
}

/// See also [TodoFormScreenController].
class TodoFormScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoFormScreenController,
        TodoEntity?> {
  /// See also [TodoFormScreenController].
  TodoFormScreenControllerProvider({
    String? editFromId,
  }) : this._internal(
          () => TodoFormScreenController()..editFromId = editFromId,
          from: todoFormScreenControllerProvider,
          name: r'todoFormScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoFormScreenControllerHash,
          dependencies: TodoFormScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              TodoFormScreenControllerFamily._allTransitiveDependencies,
          editFromId: editFromId,
        );

  TodoFormScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.editFromId,
  }) : super.internal();

  final String? editFromId;

  @override
  FutureOr<TodoEntity?> runNotifierBuild(
    covariant TodoFormScreenController notifier,
  ) {
    return notifier.build(
      editFromId: editFromId,
    );
  }

  @override
  Override overrideWith(TodoFormScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoFormScreenControllerProvider._internal(
        () => create()..editFromId = editFromId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        editFromId: editFromId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoFormScreenController, TodoEntity?>
      createElement() {
    return _TodoFormScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoFormScreenControllerProvider &&
        other.editFromId == editFromId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, editFromId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoFormScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<TodoEntity?> {
  /// The parameter `editFromId` of this provider.
  String? get editFromId;
}

class _TodoFormScreenControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoFormScreenController,
        TodoEntity?> with TodoFormScreenControllerRef {
  _TodoFormScreenControllerProviderElement(super.provider);

  @override
  String? get editFromId =>
      (origin as TodoFormScreenControllerProvider).editFromId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
