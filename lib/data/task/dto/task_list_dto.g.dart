// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskListDTO _$TaskListDTOFromJson(Map<String, dynamic> json) => TaskListDTO(
      (json['tasks'] as List<dynamic>)
          .map((e) => TaskDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskListDTOToJson(TaskListDTO instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
