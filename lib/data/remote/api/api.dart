// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';
import 'package:testenovo/data/entry/user_entry/list_users.dart';
import 'package:testenovo/data/remote/http_impl.dart';
import 'package:testenovo/data/remote/method/http_method.dart';
import 'package:testenovo/utils/data_result.dart';

abstract class Api<R, T> {
  String get pathURL;

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

/// Representa a API para listar usuários com parâmetros de paginação e seleção de campos.
/// [limit] define o número máximo de usuários a serem retornados.
/// [skip] define o número de usuários a serem ignorados no início da lista.
/// [selects] é uma lista de campos a serem incluídos na resposta.
class ApiUserList extends Api<ListUsers, Map<String, dynamic>> {
  // limit=5&skip=10&select=
  final int limit;
  final int skip;
  final List<String> selects;

  ApiUserList({this.limit = 10, this.skip = 0, this.selects = const []});
  @override
  String get pathURL => '/users';

  @override
  HttpMethod getMethod() => Get(
    path: pathURL,
    queryParameters: {
      'limit': limit.toString(),
      'skip': skip.toString(),
      'select': selects.join(','),
    },
  );

  @override
  ListUsers parseResponse(Map<String, dynamic> data) {
    return ListUsers.fromJson(data);
  }

  @override
  String toString() =>
      'ApiUserList(limit: $limit, skip: $skip, selects: $selects)';
}
