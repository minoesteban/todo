import 'package:flutter/foundation.dart';
import 'package:todo/domain/task/data/task.dart';
import 'package:todo/domain/task/use_case/add_task_use_case.dart';
import 'package:todo/domain/task/use_case/get_tasks_use_case.dart';

class TasksProvider extends ChangeNotifier {
  TasksProvider(
    this._getTasksUseCase,
    this._addTaskUseCase,
  );

  final GetTasksUseCase _getTasksUseCase;
  final AddTaskUseCase _addTaskUseCase;

  final _tasks = <Task>[];
  List<Task> get tasks => _tasks;

  Future<void> getTasks() async {
    final tasks = await _getTasksUseCase();

    _tasks.clear();
    _tasks.addAll(tasks);
    notifyListeners();
  }

  void addTask(String title) async {
    final task = await _addTaskUseCase(title);

    _tasks.add(task);
    notifyListeners();
  }
}
