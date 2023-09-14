import 'package:dio/dio.dart';
import 'package:todo/core/api_client.dart';
import 'package:todo/data/task/task_data_source.dart';
import 'package:todo/domain/task/repository/task_repository.dart';
import 'package:todo/domain/task/repository/task_repository_impl.dart';
import 'package:todo/domain/task/use_case/add_task_use_case.dart';
import 'package:todo/domain/task/use_case/get_tasks_use_case.dart';

// For dependency injection. Leaving optional parameter in [init] method to reflect overriding possibilities
class Services {
  Services._(
    this._taskRepository,
  ) {
    addTaskUseCase = AddTaskUseCase(_taskRepository);
    getTasksUseCase = GetTasksUseCase(_taskRepository);
  }

  static void init({
    TaskDataSource? taskDataSource,
    TaskRepository? taskRepository,
  }) {
    final apiClient = APIClient(Dio());

    _instance = Services._(
      taskRepository ??
          TaskRepositoryImpl(
            taskDataSource ?? TaskDataSource(apiClient),
          ),
    );
  }

  final TaskRepository _taskRepository;

  late AddTaskUseCase addTaskUseCase;
  late GetTasksUseCase getTasksUseCase;

  static Services? _instance;
  static Services get instance {
    if (_instance == null) {
      throw Exception('Services not initialized');
    }

    return _instance!;
  }
}
