import 'package:testenovo/data_source/entry/product_entry/product_entry/product_entry.dart';
import 'package:testenovo/data_source/remote/api/product/api_product.dart';
import 'package:testenovo/data_source/remote/http_impl.dart';
import 'package:testenovo/data_source/source/i_product_data_source.dart';
import 'package:testenovo/utils/data_result.dart';

class ProductDataSource implements IProductDataSource {
  final HttpImpl _httpClient;
  ProductDataSource(this._httpClient);

  @override
  Future<DataResult<ProductEntry, String>> fetchProductById(
    int productId,
  ) async {
    try {
      final api = ApiProduct(id: productId);
      final result = await api.call(_httpClient);
      return result;
    } catch (e) {
      return Failure('Erro ao buscar produto: $e');
    }
  }
}
