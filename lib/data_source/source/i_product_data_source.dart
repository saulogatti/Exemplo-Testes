import 'package:testenovo/data_source/entry/product_entry/product_entry/product_entry.dart';
import 'package:testenovo/utils/data_result.dart';

abstract interface class IProductDataSource {
  Future<DataResult<ProductEntry, String>> fetchProductById(int productId);
}