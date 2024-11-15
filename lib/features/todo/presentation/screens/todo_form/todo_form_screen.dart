import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_clean_arch/core/routes/app_routes.dart';
import 'package:sample_clean_arch/core/utils/async_util.dart';
import 'package:sample_clean_arch/core/widgets/error_placeholder.dart';
import 'package:sample_clean_arch/features/todo/presentation/controllers/todo_form/todo_form_screen_controller.dart';

class TodoFormScreen extends ConsumerWidget {
  const TodoFormScreen({this.editFromId, super.key});

  final String? editFromId;

  bool get isEditting => editFromId != null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenController =
        ref.read(todoFormScreenControllerProvider(editFromId: editFromId).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditting ? 'Edit Todo' : 'Add Todo'),
      ),
      body: Center(
        child: ref.watch(todoFormScreenControllerProvider(editFromId: editFromId)).when(
              data: (data) => SizedBox(
                width: 480,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    TextField(
                      controller: screenController.titleController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Title',
                      ),
                      onChanged: isEditting ? screenController.updateTitle : null,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: screenController.descriptionController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description',
                      ),
                      onChanged: isEditting ? screenController.updateDescription : null,
                    ),
                    const SizedBox(height: 20),
                    if (!isEditting)
                      ElevatedButton(
                        onPressed: () {
                          () async {
                            await screenController.addTodo();
                            if (context.mounted) {
                              context.go(AppRoutes.root);
                            }
                          }()
                              .showLoadingDialog(context)
                              .showDialogOnError(context);
                        },
                        child: const Text('Add'),
                      ),
                  ],
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => ErrorPlaceholder(error, stackTrace),
            ),
      ),
    );
  }
}
