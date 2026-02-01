import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';
import 'package:testenovo/utils/data_result.dart';

/// Caso de uso responsável por ações relacionadas a usuários.
class UserActions {
  final IUserRepository _repository;
  UserActions(this._repository);
  Future<DataResult<List<UserModel>, String>> fetchAllUsers() {
    return _repository.getAllUsers();
  }

  Future<DataResult<UserModel, String>> save(String name) {
    return _repository.saveUserName(12, name);
  }
}
