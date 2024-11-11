// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_usecases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchTodosUsecaseHash() =>
    r'5a44f84cff5de8353a18bd0b0603c020da57bfc2';

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

/// See also [searchTodosUsecase].
@ProviderFor(searchTodosUsecase)
const searchTodosUsecaseProvider = SearchTodosUsecaseFamily();

/// See also [searchTodosUsecase].
class SearchTodosUsecaseFamily extends Family<AsyncValue<List<TodoEntity>>> {
  /// See also [searchTodosUsecase].
  const SearchTodosUsecaseFamily();

  /// See also [searchTodosUsecase].
  SearchTodosUsecaseProvider call(
    String seachWord,
  ) {
    return SearchTodosUsecaseProvider(
      seachWord,
    );
  }

  @override
  SearchTodosUsecaseProvider getProviderOverride(
    covariant SearchTodosUsecaseProvider provider,
  ) {
    return call(
      provider.seachWord,
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
  String? get name => r'searchTodosUsecaseProvider';
}

/// See also [searchTodosUsecase].
class SearchTodosUsecaseProvider
    extends AutoDisposeFutureProvider<List<TodoEntity>> {
  /// See also [searchTodosUsecase].
  SearchTodosUsecaseProvider(
    String seachWord,
  ) : this._internal(
          (ref) => searchTodosUsecase(
            ref as SearchTodosUsecaseRef,
            seachWord,
          ),
          from: searchTodosUsecaseProvider,
          name: r'searchTodosUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchTodosUsecaseHash,
          dependencies: SearchTodosUsecaseFamily._dependencies,
          allTransitiveDependencies:
              SearchTodosUsecaseFamily._allTransitiveDependencies,
          seachWord: seachWord,
        );

  SearchTodosUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.seachWord,
  }) : super.internal();

  final String seachWord;

  @override
  Override overrideWith(
    FutureOr<List<TodoEntity>> Function(SearchTodosUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchTodosUsecaseProvider._internal(
        (ref) => create(ref as SearchTodosUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        seachWord: seachWord,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TodoEntity>> createElement() {
    return _SearchTodosUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchTodosUsecaseProvider && other.seachWord == seachWord;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, seachWord.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchTodosUsecaseRef on AutoDisposeFutureProviderRef<List<TodoEntity>> {
  /// The parameter `seachWord` of this provider.
  String get seachWord;
}

class _SearchTodosUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<List<TodoEntity>>
    with SearchTodosUsecaseRef {
  _SearchTodosUsecaseProviderElement(super.provider);

  @override
  String get seachWord => (origin as SearchTodosUsecaseProvider).seachWord;
}

String _$getAllTodosUsecaseHash() =>
    r'2d55e97aca362bd1a13b36ccb8e18af52ceb3a89';

/// See also [getAllTodosUsecase].
@ProviderFor(getAllTodosUsecase)
final getAllTodosUsecaseProvider =
    AutoDisposeFutureProvider<List<TodoEntity>>.internal(
  getAllTodosUsecase,
  name: r'getAllTodosUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllTodosUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetAllTodosUsecaseRef = AutoDisposeFutureProviderRef<List<TodoEntity>>;
String _$addTodoUsecaseHash() => r'115d11db812f033cc693ae52022ea040f8149178';

/// See also [addTodoUsecase].
@ProviderFor(addTodoUsecase)
const addTodoUsecaseProvider = AddTodoUsecaseFamily();

/// See also [addTodoUsecase].
class AddTodoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [addTodoUsecase].
  const AddTodoUsecaseFamily();

  /// See also [addTodoUsecase].
  AddTodoUsecaseProvider call(
    TodoEntity todo,
  ) {
    return AddTodoUsecaseProvider(
      todo,
    );
  }

  @override
  AddTodoUsecaseProvider getProviderOverride(
    covariant AddTodoUsecaseProvider provider,
  ) {
    return call(
      provider.todo,
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
  String? get name => r'addTodoUsecaseProvider';
}

/// See also [addTodoUsecase].
class AddTodoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addTodoUsecase].
  AddTodoUsecaseProvider(
    TodoEntity todo,
  ) : this._internal(
          (ref) => addTodoUsecase(
            ref as AddTodoUsecaseRef,
            todo,
          ),
          from: addTodoUsecaseProvider,
          name: r'addTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoUsecaseHash,
          dependencies: AddTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              AddTodoUsecaseFamily._allTransitiveDependencies,
          todo: todo,
        );

  AddTodoUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.todo,
  }) : super.internal();

  final TodoEntity todo;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddTodoUsecaseProvider._internal(
        (ref) => create(ref as AddTodoUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        todo: todo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoUsecaseProvider && other.todo == todo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, todo.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddTodoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `todo` of this provider.
  TodoEntity get todo;
}

class _AddTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddTodoUsecaseRef {
  _AddTodoUsecaseProviderElement(super.provider);

  @override
  TodoEntity get todo => (origin as AddTodoUsecaseProvider).todo;
}

String _$updateTodoUsecaseHash() => r'11b90d9224c480b93b6c1402dc9dfb7d3babc00a';

/// See also [updateTodoUsecase].
@ProviderFor(updateTodoUsecase)
const updateTodoUsecaseProvider = UpdateTodoUsecaseFamily();

/// See also [updateTodoUsecase].
class UpdateTodoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [updateTodoUsecase].
  const UpdateTodoUsecaseFamily();

  /// See also [updateTodoUsecase].
  UpdateTodoUsecaseProvider call(
    TodoEntity todo,
  ) {
    return UpdateTodoUsecaseProvider(
      todo,
    );
  }

  @override
  UpdateTodoUsecaseProvider getProviderOverride(
    covariant UpdateTodoUsecaseProvider provider,
  ) {
    return call(
      provider.todo,
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
  String? get name => r'updateTodoUsecaseProvider';
}

/// See also [updateTodoUsecase].
class UpdateTodoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateTodoUsecase].
  UpdateTodoUsecaseProvider(
    TodoEntity todo,
  ) : this._internal(
          (ref) => updateTodoUsecase(
            ref as UpdateTodoUsecaseRef,
            todo,
          ),
          from: updateTodoUsecaseProvider,
          name: r'updateTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateTodoUsecaseHash,
          dependencies: UpdateTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateTodoUsecaseFamily._allTransitiveDependencies,
          todo: todo,
        );

  UpdateTodoUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.todo,
  }) : super.internal();

  final TodoEntity todo;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateTodoUsecaseProvider._internal(
        (ref) => create(ref as UpdateTodoUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        todo: todo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateTodoUsecaseProvider && other.todo == todo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, todo.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateTodoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `todo` of this provider.
  TodoEntity get todo;
}

class _UpdateTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateTodoUsecaseRef {
  _UpdateTodoUsecaseProviderElement(super.provider);

  @override
  TodoEntity get todo => (origin as UpdateTodoUsecaseProvider).todo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
