import 'package:todo/domain/task/data/task.dart';

// Single example of abstract class <-> implementation scheme to supoprt dependency injection
abstract class TaskRepository {
  Future<List<Task>> getTasks();

  Future<Task> addTask(String title);
}
