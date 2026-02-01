import 'package:testenovo/data/entry/user_entry/list_users.dart';
import 'package:testenovo/data/remote/api/api.dart';
import 'package:testenovo/data/remote/http_impl.dart';
import 'package:testenovo/utils/data_result.dart';

/// Fonte de dados responsável por buscar informações de usuários.
/// Pode buscar dados de uma API remota, banco de dados local, etc.
/// Atualmente, ela busca todos os usuários com nomes e emails.
class UserDataSource {
  Future<DataResult<ListUsers, String>> getAllUsers() async {
    // Futuramente aqui podemos adicionar mais lógica, como cache, manipulação de erros, etc.
    try {
      // TODO Talvez o objeto HttpImpl possa ser injetado via construtor para facilitar testes.
      final http = HttpImpl('https://dummyjson.com');
      final api = ApiUserList(
        limit: 100,
        skip: 0,
        selects: ['firstName', 'email'],
      );
      final result = await api.call(http);
      return result;
    } catch (e) {
      return DataResult.failure('Erro ao buscar nomes de usuários: $e');
    }
  }
}
