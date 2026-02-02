import 'package:testenovo/data_source/entry/product_entry/product_list.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

class ApiAllProduct extends Api<ProductList, Map<String, dynamic>> {
  @override
  HttpMethod getMethod() {
  return Get(path: "/products");
  }

  @override
  ProductList parseResponse(Map<String, dynamic> data) {
    return ProductList.fromJson(data);
  }
}
