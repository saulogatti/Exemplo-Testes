import 'package:dio/dio.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';
import 'package:testenovo/utils/data_result.dart';

/// Implementa a classe responsável por fazer requisições HTTP usando o Dio.
/// [baseUrl] é a URL base para as requisições.
class HttpImpl {
  final Dio _dio;
  HttpImpl(String baseUrl)
    : assert(baseUrl.isNotEmpty, "Base URL cannot be empty"),
      _dio = Dio(BaseOptions(baseUrl: baseUrl));

  /// Faz uma requisição HTTP com o método fornecido e retorna um [DataResult].
  /// [T] é o tipo esperado da resposta em caso de sucesso.
  /// [String] é o tipo do erro em caso de falha.
  /// [method] é o método HTTP a ser usado na requisição.
  Future<DataResult<T, String>> request<T>(HttpMethod method) async {
    switch (method) {
      case Get(:final queryParameters):
        try {
          final response = await _dio.get<T>(
            method.path,
            queryParameters: queryParameters,
          );
          return DataResult.success(response.data as T);
        } catch (e) {
          return DataResult.failure(e.toString());
        }
      case Post(:final body):
        try {
          final response = await _dio.post<T>(method.path, data: body);
          return DataResult.success(response.data as T);
        } catch (e) {
          return DataResult.failure(e.toString());
        }
    }
  }
}
