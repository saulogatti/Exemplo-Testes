// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';
import 'package:testenovo/data_source/remote/http_impl.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';
import 'package:testenovo/utils/data_result.dart';

abstract class Api<R extends Object, T> {
  /// Faz a chamada da API usando a implementação HTTP fornecida.
  @nonVirtual
  Future<DataResult<R, String>> call(HttpImpl http) async {
    final result = await http.request<T>(getMethod());
    return switch (result) {
      Success(:final data) => DataResult.success(parseResponse(data)),
      Failure(:final error) => DataResult.failure(error),
    };
  }

  HttpMethod getMethod();

  /// Converte a resposta do tipo [T] para o tipo [R].
  R parseResponse(T data);
}
