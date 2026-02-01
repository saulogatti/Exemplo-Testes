import 'package:testenovo/domain/models/product/product_model.dart';
import 'package:testenovo/domain/repository/i_product_repository.dart';
import 'package:testenovo/utils/data_result.dart';

class ProductActions {
  final IProductRepository _repository;
  ProductActions(this._repository);
  Future<DataResult<ProductModel, String>> fetchProductById(int productId) {
    return _repository.getProductById(productId);
  }
}
