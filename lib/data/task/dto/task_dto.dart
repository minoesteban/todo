import 'package:json_annotation/json_annotation.dart';

part 'task_dto.g.dart';

// Single example of serialization/deserialization using json_serializable
@JsonSerializable()
class TaskDTO {
  const TaskDTO(this.id, this.title, this.completed);

  factory TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDTOToJson(this);

  final int id;
  final String title;
  final bool completed;
}
