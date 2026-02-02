import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductListView extends StatefulWidget implements AutoRouteWrapper {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Center(child: Text('This is the Product List View!'))],
    );
  }
}
