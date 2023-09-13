import 'package:todo/domain/task/data/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();

  Future<Task> getTask(int id);

  Future<void> addTask(Task task);

  Future<void> updateTask(Task task);

  Future<void> deleteTask(int id);
}
