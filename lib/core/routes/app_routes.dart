import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_clean_arch/core/errors/showable_exception.dart';
import 'package:sample_clean_arch/core/widgets/error_placeholder.dart';
import 'package:sample_clean_arch/features/todo/presentation/screens/todo_form/todo_form_screen.dart';
import 'package:sample_clean_arch/features/todo/presentation/screens/todo_list/todo_list_screen.dart';

class AppRoutes {
  static const root = '/';
  static const addTodo = '/add';
  static String todoDetail(String id) => '/$id';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: root,
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (context, state) => Scaffold(
      body: ErrorPlaceholder(ShowableException('Invalid URL', ''), StackTrace.current),
    ),
    routes: [
      GoRoute(
        path: root,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => MaterialPage(
          child: TodoListScreen(key: state.pageKey),
        ),
      ),
      GoRoute(
        path: addTodo,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => MaterialPage(
          child: TodoFormScreen(key: state.pageKey, editFromId: null),
        ),
      ),
      GoRoute(
        path: todoDetail(':id'),
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => MaterialPage(
          child: TodoFormScreen(key: state.pageKey, editFromId: state.pathParameters['id']),
        ),
      ),
    ],
  );
}
