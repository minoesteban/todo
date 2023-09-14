import 'package:todo/domain/task/data/task.dart';
import 'package:todo/domain/task/repository/task_repository.dart';

class AddTaskUseCase {
  const AddTaskUseCase(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<Task> call(String title) async => _taskRepository.addTask(title);
}
