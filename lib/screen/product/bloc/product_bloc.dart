import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/screen/product/bloc/product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) {});
  }
}


