import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1';

  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await _dio.get('$_baseUrl/$endPoint');
    return response.data;
  }
}
