import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:todo/state/tasks_provider.dart';

class TasksList extends HookWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).buttonTheme.colorScheme;

    return Consumer<TasksProvider>(
      builder: (context, provider, child) {
        final tasks = provider.tasks;

        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              color: Theme.of(context).colorScheme.surface,
              child: ListTile(
                visualDensity: VisualDensity.comfortable,
                title: Text(tasks[index].title),
                trailing: tasks[index].completed
                    ? Icon(
                        Icons.check_circle,
                        color: colors?.primary,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        color: colors?.secondary.withOpacity(.5),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
