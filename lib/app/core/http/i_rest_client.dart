import 'package:dio/dio.dart';

abstract class IRestClient {
  Future<Response> post(
    String url, {
    dynamic body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  });

  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> delete(
    String url, {
    dynamic body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> put(
    String url, {
    dynamic body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> patch(
    String url, {
    dynamic body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
