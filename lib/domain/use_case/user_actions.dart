import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';

class UserActions {
  final IUserRepository _repository;
  UserActions(this._repository);
  Future<List<UserModel>> fetchAllUsers() {
    return _repository.getAllUsers();
  }
}
