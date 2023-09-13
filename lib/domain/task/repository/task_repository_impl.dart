import 'package:todo/data/task/task_data_source.dart';
import 'package:todo/domain/task/data/task.dart';
import 'package:todo/domain/task/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  const TaskRepositoryImpl(this._dataSource);

  final TaskDataSource _dataSource;

  @override
  Future<void> addTask(Task task) async {
    return _dataSource.addTask(task);
  }

  @override
  Future<void> deleteTask(int id) async {
    return _dataSource.deleteTask(id);
  }

  @override
  Future<Task> getTask(int id) async {
    return _dataSource.getTask(id);
  }

  @override
  Future<List<Task>> getTasks() async {
    return _dataSource.getTasks();
  }

  @override
  Future<void> updateTask(Task task) async {
    return _dataSource.updateTask(task);
  }
}
