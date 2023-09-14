import 'package:dio/dio.dart';

class APIClient {
  const APIClient(this.dio);

  final Dio dio;

  // This would be in a separate Config class/entity, but skipping for simplicity
  final baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async =>
      dio.get(
        baseUrl + path,
        queryParameters: queryParameters,
      );

  Future<Response> post(
    String path, {
    dynamic data,
  }) async =>
      dio.post(
        baseUrl + path,
        data: data,
      );
}
