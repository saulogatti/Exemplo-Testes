import 'package:testenovo/data_source/entry/product_entry/product_entry/product_entry.dart';

class ProductModel extends ProductEntry {
  ProductModel({
    required super.id,
    required super.images,
    required super.description,
    required super.price,
    required super.stock,
  });
}
