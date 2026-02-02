import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testenovo/domain/models/product/product_model.dart';

part 'product_state.freezed.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProducts;
  const factory ProductEvent.loadProductById(int productId) =  LoadProductById;
}

@freezed
sealed class ProductState with _$ProductState {
  const factory ProductState.error({required String message}) = Error;
  const factory ProductState.initial() = Initial;
  const factory ProductState.loaded({required List<ProductModel> products}) =
      Loaded;
  const factory ProductState.loading() = Loading;
  const factory ProductState.productLoaded({required ProductModel product}) =
      ProductLoaded;
}
