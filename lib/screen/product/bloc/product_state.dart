import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testenovo/domain/models/product/product_model.dart';

part 'product_state.freezed.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProducts;
}

@freezed
sealed class ProductState with _$ProductState {
  const factory ProductState.error({required String message}) = _Error;
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loaded({required List<ProductModel> products}) =
      _Loaded;
  const factory ProductState.loading() = _Loading;
}
