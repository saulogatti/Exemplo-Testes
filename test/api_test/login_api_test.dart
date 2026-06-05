import 'package:flutter_test/flutter_test.dart';
import 'package:testenovo/data_source/entry/login_entry/login_entry.dart';
import 'package:testenovo/data_source/remote/api/auth/login_api.dart';
import 'package:testenovo/data_source/remote/http_impl.dart';
import 'package:testenovo/utils/data_result.dart';

void main() {
  test('login api test', () async {
    final loginApi = LoginApi(username: 'emilys', password: 'emilyspass');
    final http = HttpImpl('https://dummyjson.com');
    final result = await loginApi.call(http);

    expect(result, isA<DataResult<LoginEntry, String>>());
    switch (result) {
      case Success(:final data):
        expect(data, isA<LoginEntry>());
      case Failure(:final error):
        expect(error, isA<String>());
    }
  });
}
