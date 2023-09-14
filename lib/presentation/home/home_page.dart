import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentation/home/home_screen.dart';
import 'package:todo/services.dart';
import 'package:todo/state/tasks_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TasksProvider(
        Services.instance.getTasksUseCase,
        Services.instance.addTaskUseCase,
      ),
      child: const HomeScreen(),
    );
  }
}
