import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentation/home/widgets/task_input.dart';
import 'package:todo/presentation/home/widgets/tasks_list.dart';
import 'package:todo/state/tasks_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        elevation: 0,
      ),
      body: FutureBuilder(
        future: context.read<TasksProvider>().getTasks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            children: [
              const Expanded(
                child: TasksList(),
              ),
              TaskInput(
                onAddTask: context.read<TasksProvider>().addTask,
              ),
            ],
          );
        },
      ),
    );
  }
}
