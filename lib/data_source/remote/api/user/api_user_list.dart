// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:testenovo/data_source/entry/user_entry/list_users.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

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
  HttpMethod getMethod() => Get(
    path: '/users',
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
