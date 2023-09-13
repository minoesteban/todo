import 'package:todo/domain/task/data/task.dart';

class TaskDataSource {
  const TaskDataSource();

  Future<List<Task>> getTasks() async {
    return const [];
  }

  Future<Task> getTask(int id) async {
    return const Task(id: 0, title: '', completed: false);
  }

  Future<void> addTask(Task task) async {}

  Future<void> updateTask(Task task) async {}

  Future<void> deleteTask(int id) async {}
}
