import 'package:testenovo/data_source/entry/user_entry/user_entry.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

class ApiAddUser extends Api<UserEntry, Map<String, dynamic>> {
  final String firstName;
  final String lastName;
  ApiAddUser(this.firstName, this.lastName);
  @override
  HttpMethod getMethod() {
    return Post(
      path: '/users/add',
      body: {'firstName': firstName, 'lastName': lastName},
    );
  }

  @override
  UserEntry parseResponse(Map<String, dynamic> data) {
    return UserEntry.fromJson(data);
  }
}
