import 'package:todo/data/task/mapper/task_dto_mapper.dart';
import 'package:todo/data/task/task_data_source.dart';
import 'package:todo/domain/task/data/task.dart';
import 'package:todo/domain/task/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  const TaskRepositoryImpl(this._dataSource);

  final TaskDataSource _dataSource;

  final TaskDTOMapper _mapper = const TaskDTOMapper();

  @override
  Future<Task> addTask(String title) async {
    final dto = await _dataSource.addTask(title);

    return _mapper(dto);
  }

  @override
  Future<List<Task>> getTasks() async {
    final dto = await _dataSource.getTasks();

    return dto.tasks.map<Task>(_mapper).toList();
  }
}
