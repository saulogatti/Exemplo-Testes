import 'package:testenovo/data/entry/user_entry/user_entry.dart';

class UserModel extends UserEntry {
  UserModel({
    required super.id,
    required super.firstName,
    required super.email,
  });

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, email: $email)';
  }
}
