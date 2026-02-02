import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/domain/use_case/product_actions.dart';
import 'package:testenovo/screen/product/bloc/product_state.dart';
import 'package:testenovo/utils/data_result.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductActions _productActions;
  ProductBloc(this._productActions) : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      switch (event) {
        case LoadProductById(:final productId):
          _loadById(emit, productId);
        case LoadProducts():
          emit(ProductState.loading());
          final result = await _productActions.fetchAllProducts();
          switch (result) {
            case Success(:final data):
              emit(ProductState.loaded(products: data));
            case Failure(:final error):
              emit(ProductState.error(message: error));
          }
      }
    });
  }

  Future<void> _loadById(Emitter<ProductState> emit, int productId) async {
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
  }
}
