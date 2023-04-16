import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class ApiSource {
  final Dio dio = Dio(BaseOptions(
    headers: {},
  ));

  static const _scheme = 'https';
  static const _baseUrl = 'baseurl.com';

  static String prettyString(dynamic json) =>
      const JsonEncoder.withIndent('  ').convert(json);

  void printJson(dynamic json) => debugPrint(prettyString(json));

  static Uri getBaseUri(String path, {Map<String, dynamic>? queryParameters}) {
    return Uri(
      scheme: _scheme,
      host: _baseUrl,
      path: path,
      queryParameters: queryParameters,
    );
  }

  Future<T?> get<T>(String path) async {
    final uri = getBaseUri(path);
    debugPrint('Fetching: $uri');
    final response = await dio.getUri<T>(uri);
    debugPrint('Response: ${response.data.runtimeType}');
    return response.data;
  }

  Future<T?> post<T>(String path, dynamic data) async {
    final uri = getBaseUri(path);
    debugPrint('Posting: $uri');
    final response = await dio.postUri<T>(uri, data: data);
    debugPrint('Response: ${response.data.runtimeType}');
    return response.data;
  }
}
