import 'package:testenovo/data_source/entry/user_entry/list_users.dart';
import 'package:testenovo/utils/data_result.dart';

abstract interface class IUserDataSource {
  Future<String> getUserNameById(int userId);
  Future<void> saveUserName(int userId, String userName);
  Future<DataResult<ListUsers, String>> getAllUsers();
}