import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';

/// Caso de uso responsável por ações relacionadas a usuários.
class UserActions {
  final IUserRepository _repository;
  UserActions(this._repository);
  Future<List<UserModel>> fetchAllUsers() {
    return _repository.getAllUsers();
  }
}
