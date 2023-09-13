import 'package:json_annotation/json_annotation.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDTO {
  const TaskDTO(this.id, this.title, this.completed);

  factory TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);

  final int id;
  final String title;
  final bool completed;
}
