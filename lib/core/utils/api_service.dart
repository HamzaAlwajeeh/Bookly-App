// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1';

  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await dio.get('$_baseUrl/$endPoint');
    return response.data;
  }

  Future<dynamic> getUserProfile({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};

    headers.addAll({'Content-Type': 'application/json'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
        "There is an error with status code : ${response.statusCode} and body : ${response.body}",
      );
    }
  }
}
