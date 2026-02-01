import 'package:testenovo/data_source/entry/user_entry/list_users.dart';
import 'package:testenovo/data_source/entry/user_entry/user_entry.dart';
import 'package:testenovo/data_source/remote/api/user/api_add_user.dart';
import 'package:testenovo/data_source/remote/api/user/api_user.dart';
import 'package:testenovo/data_source/remote/api/user/api_user_list.dart';
import 'package:testenovo/data_source/remote/http_impl.dart';
import 'package:testenovo/data_source/source/i_user_data_source.dart';
import 'package:testenovo/utils/data_result.dart';

/// Fonte de dados responsável por buscar informações de usuários.
/// Pode buscar dados de uma API remota, banco de dados local, etc.
/// Atualmente, ela busca todos os usuários com nomes e emails.
class UserDataSource implements IUserDataSource {
  final HttpImpl _httpClient;
  UserDataSource(this._httpClient);
  @override
  Future<DataResult<ListUsers, String>> getAllUsers() async {
    // Futuramente aqui podemos adicionar mais lógica, como cache, manipulação de erros, etc.
    try {
      final api = ApiUserList(
        limit: 100,
        skip: 0,
        selects: ['firstName', 'email'],
      );
      final result = await api.call(_httpClient);
      return result;
    } catch (e) {
      return Failure('Erro ao buscar nomes de usuários: $e');
    }
  }

  @override
  Future<DataResult<UserEntry, String>> getUserById(int userId) async {
    final api = ApiUser(id: userId);
    return await api.call(_httpClient);
  }

  @override
  Future<DataResult<UserEntry, String>> saveUserName(
    int userId,
    String userName,
  ) {
    final api = ApiAddUser(userName, userId.toString());
    return api.call(_httpClient).then((result) {
      // Aqui você pode manipular o resultado se necessário
      return result;
    });
  }
}
