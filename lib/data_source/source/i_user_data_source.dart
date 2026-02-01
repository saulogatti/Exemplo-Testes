import 'package:testenovo/data_source/entry/user_entry/list_users.dart';
import 'package:testenovo/utils/data_result.dart';

/// Contrato da fonte de dados responsável por buscar informações de usuários.
/// Pode buscar dados de uma API remota, banco de dados local, etc.
abstract interface class IUserDataSource {
  Future<DataResult<ListUsers, String>> getAllUsers();
  Future<String> getUserNameById(int userId);
  Future<void> saveUserName(int userId, String userName);
}
