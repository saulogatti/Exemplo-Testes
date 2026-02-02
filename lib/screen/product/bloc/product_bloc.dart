import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/domain/use_case/product_actions.dart';
import 'package:testenovo/screen/product/bloc/product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductActions _productActions;
  ProductBloc(this._productActions) : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) {
      event.when(
        loadProducts: () async {
          emit(ProductState.loading());
          final result = await _productActions.fetchAllProducts();
          result.when(
            success: (products) {
              emit(ProductState.loaded(products: products));
            },
            failure: (message) {
              emit(ProductState.error(message: message));
            },
          );
        },
        loadProductById: (int productId) async {
          emit(ProductState.loading());
          final result = await _productActions.fetchProductById(productId);
          result.when(
            success: (product) {
              emit(ProductState.productLoaded(product: product));
            },
            failure: (message) {
              emit(ProductState.error(message: message));
            },
          );
        },
      );
    });
  }
}
