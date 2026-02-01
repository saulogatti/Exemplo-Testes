import 'package:testenovo/domain/models/user/user_model.dart';

abstract interface class IUserRepository {
  Future<List<UserModel>> getAllUsers();
  Future<UserModel?> getUserById(int id);
  Future<String> getUserNameById(int userId);
  Future<void> saveUserName(int userId, String userName);
}
