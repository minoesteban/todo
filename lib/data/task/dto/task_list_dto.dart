import 'package:todo/data/task/dto/task_dto.dart';

class TaskListDTO {
  const TaskListDTO(this.tasks);

  factory TaskListDTO.fromJson(List<dynamic> json) => TaskListDTO(
        json
            .map<TaskDTO>(
              (e) => TaskDTO.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );

  final List<TaskDTO> tasks;
}
