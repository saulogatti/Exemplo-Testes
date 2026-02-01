import 'package:testenovo/data_source/entry/user_entry/user_entry.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

class ApiUser extends Api<UserEntry, Map<String, dynamic>> {
  final int id;
  ApiUser({required this.id});
  @override
  HttpMethod getMethod() {
    return Get(path: '/users/$id');
  }

  @override
  UserEntry parseResponse(Map<String, dynamic> data) {
    return UserEntry.fromJson(data);
  }
}
