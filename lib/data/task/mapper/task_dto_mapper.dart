import 'package:todo/data/mapper.dart';
import 'package:todo/data/task/dto/task_dto.dart';
import 'package:todo/domain/task/data/task.dart';

class TaskDTOMapper implements Mapper<TaskDTO, Task> {
  const TaskDTOMapper();

  @override
  Task call(TaskDTO dto) {
    return Task(
      id: dto.id,
      title: dto.title,
      completed: dto.completed,
    );
  }
}
