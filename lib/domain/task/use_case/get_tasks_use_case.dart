import 'package:todo/domain/task/data/task.dart';
import 'package:todo/domain/task/repository/task_repository.dart';

class GetTasksUseCase {
  const GetTasksUseCase(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<List<Task>> call() async {
    return _taskRepository.getTasks();
  }
}
