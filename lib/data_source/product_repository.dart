import 'package:testenovo/data_source/source/i_product_data_source.dart';
import 'package:testenovo/domain/models/product/product_model.dart';
import 'package:testenovo/domain/repository/i_product_repository.dart';
import 'package:testenovo/utils/data_result.dart';

class ProductRepository implements IProductRepository {
  final IProductDataSource _dataSource;
  ProductRepository(this._dataSource);
  @override
  Future<DataResult<List<ProductModel>, String>> getAllProducts() async {
    final result = await _dataSource.fetchAllProducts();
    switch (result) {
      case Success(:final data):
        final products = data
            .map(
              (e) => ProductModel(
                id: e.id,
                price: e.price,
                description: e.description,
                stock: e.stock,
                images: e.images,
              ),
            )
            .toList();
        return Success(products);
      case Failure(:final error):
        return Failure('Erro ao buscar produtos: $error');
    }
  }

  @override
  Future<DataResult<ProductModel, String>> getProductById(int productId) async {
    final result = await _dataSource.fetchProductById(productId);
    switch (result) {
      case Success(:final data):
        final product = ProductModel(
          id: data.id,
          price: data.price,
          description: data.description,
          stock: data.stock,
          images: data.images,
        );
        return Success(product);
      case Failure(:final error):
        return Failure('Erro ao buscar produto: $error');
    }
  }
}
