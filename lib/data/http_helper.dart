import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class HttpHelper {
  final _dio = Dio();

  static const _scheme = 'https';
  static const _baseUrl = 'google.com';

  Map<String, dynamic> get headers => {
        'Content-Type': 'application/json',
      };

  Uri getBaseUri(String path, {Map<String, dynamic>? query}) {
    return Uri(
      scheme: _scheme,
      host: _baseUrl,
      path: path,
      queryParameters: query,
    );
  }

  Future<T?> fetch<T>(Uri uri) async {
    debugPrint('Fetching: $uri');
    final response = await _dio.getUri<T>(uri);
    debugPrint('Response: ${response.data.runtimeType}');
    return response.data;
  }

  Future<T?> post<T>(Uri uri, dynamic data) async {
    debugPrint('Posting: $uri');
    final response = await _dio.postUri<T>(uri, data: data);
    debugPrint('Response: ${response.data.runtimeType}');
    return response.data;
  }

  Future<T?> put<T>(Uri uri, dynamic data) async {
    debugPrint('Putting: $uri');
    final response = await _dio.putUri<T>(uri, data: data);
    debugPrint('Response: ${response.data.runtimeType}');
    return response.data;
  }
}
