import 'package:testenovo/data_source/entry/product_entry/product_entry/product_entry.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

class ApiProduct extends Api<ProductEntry, Map<String, dynamic>> {
  final int id;
  ApiProduct({required this.id});
  @override
  HttpMethod getMethod() {
    return Get(path: '/products/$id');
  }

  @override
  ProductEntry parseResponse(Map<String, dynamic> data) {
    return ProductEntry.fromJson(data);
  }
}
