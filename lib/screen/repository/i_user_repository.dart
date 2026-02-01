import 'package:testenovo/domain/models/user/user_model.dart';

abstract interface class IUserRepository {
  // TODO UserModel vai ser trocado por UserEntity
  Future<List<UserModel>> getAllUsers();
  Future<UserModel?> getUserById(int id);
  Future<String> getUserNameById(int userId);
  Future<void> saveUserName(int userId, String userName);
}
