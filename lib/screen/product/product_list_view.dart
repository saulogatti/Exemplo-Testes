import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/di/app_injection.dart';
import 'package:testenovo/domain/use_case/product_actions.dart';
import 'package:testenovo/screen/common/error/custom_error_widget.dart';
import 'package:testenovo/screen/product/bloc/product_bloc.dart';
import 'package:testenovo/screen/product/bloc/product_state.dart';
import 'package:testenovo/screen/product/product_card.dart';

@RoutePage()
class ProductListView extends StatefulWidget implements AutoRouteWrapper {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(getIt<ProductActions>()),
      child: this,
    );
  }
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is Error) {
          return CustomErrorWidget(
            onRetry: () {
              context.read<ProductBloc>().add(
                const ProductEvent.loadProducts(),
              );
            },
            message: state.message,
          );
        } else if (state is Loaded) {
          final list = state.products;
          return CustomScrollView(
            slivers: [
              SliverList.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final product = list[index];
                  return ProductCard(
                    images: product.images ?? [],
                    description: product.description ?? '',
                    price: product.price,
                  );
                },
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const ProductEvent.loadProducts());
  }
}
