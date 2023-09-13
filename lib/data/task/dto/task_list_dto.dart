import 'package:json_annotation/json_annotation.dart';
import 'package:todo/data/task/dto/task_dto.dart';

part 'task_list_dto.g.dart';

@JsonSerializable()
class TaskListDTO {
  const TaskListDTO(this.tasks);

  factory TaskListDTO.fromJson(Map<String, dynamic> json) => _$TaskListDTOFromJson(json);

  final List<TaskDTO> tasks;
}
