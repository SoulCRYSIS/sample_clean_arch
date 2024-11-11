import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_clean_arch/core/routes/app_routes.dart';
import 'package:sample_clean_arch/core/widgets/error_placeholder.dart';
import 'package:sample_clean_arch/features/todo/presentation/controllers/todo_list/todo_list_screen_controller.dart';
import 'package:sample_clean_arch/features/todo/presentation/screens/todo_list/todo_card.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenController = ref.read(todoListScreenControllerProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  onSubmitted: (value) => screenController.searchTodos(value),
                ),
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.add_box),
                onPressed: () => context.go(AppRoutes.addTodo),
              )
            ],
          ),
          const Divider(),
          Expanded(
            child: ref.watch(todoListScreenControllerProvider).when(
                  data: (data) => ListView.builder(
                    itemCount: data.todos.length,
                    itemBuilder: (context, index) => TodoCard(data.todos[index]),
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => ErrorPlaceholder(error),
                ),
          )
        ],
      ),
    );
  }
}
