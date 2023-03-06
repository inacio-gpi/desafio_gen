import 'package:dio/dio.dart';

import 'i_rest_client.dart';

class CustomDio implements IRestClient {
  final Dio _client;

  BaseOptions options = BaseOptions();

  CustomDio(this._client);

  @override
  Future<Response> delete(
    String url, {
    body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      await _client.delete(
        url,
        data: body,
        queryParameters: queryParameters,
      );

  @override
  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      await _client.get(
        path,
        queryParameters: queryParameters,
      );

  @override
  Future<Response> patch(
    String url, {
    body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      await _client.patch(
        url,
        data: body,
        queryParameters: queryParameters,
      );

  @override
  Future<Response> post(
    String url, {
    body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    void Function(int p1, int p2)? onSendProgress,
  }) async =>
      await _client.post(
        url,
        data: body,
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
      );

  @override
  Future<Response> put(
    String url, {
    body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      await _client.put(
        url,
        data: body,
        queryParameters: queryParameters,
      );
}
