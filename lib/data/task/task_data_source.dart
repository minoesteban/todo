import 'package:todo/core/api_client.dart';
import 'package:todo/data/task/dto/task_dto.dart';
import 'package:todo/data/task/dto/task_list_dto.dart';

class TaskDataSource {
  const TaskDataSource(this.client);

  final APIClient client;

  Future<TaskListDTO> getTasks() async {
    final result = await client.get(
      '/todos',
      queryParameters: {
        'userId': 1, // Ignoring session/auth/user data for simplicity. Defaulting to user 1
      },
    );

    if (result.statusCode == 200) {
      // Better approach would be to use a resolver to control possible [result.data] formats. Skipped for simplicity
      final dto = TaskListDTO.fromJson(result.data);

      return dto;
    }

    throw Exception('Error getting tasks');
  }

  Future<TaskDTO> addTask(String title) async {
    final result = await client.post('/todos', data: {
      'userId': 1,
      'title': title,
      'completed': false,
    });

    if (result.statusCode == 201) {
      return TaskDTO.fromJson(result.data);
    }

    throw Exception('Error adding task');
  }
}
