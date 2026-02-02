import 'package:testenovo/domain/models/product/product_model.dart';
import 'package:testenovo/utils/data_result.dart';

abstract interface class IProductRepository {
  Future<DataResult<ProductModel, String>> getProductById(int productId);
  Future<DataResult<List<ProductModel>, String>> getAllProducts();
}