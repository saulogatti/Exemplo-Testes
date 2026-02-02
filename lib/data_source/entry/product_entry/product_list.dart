import 'package:json_annotation/json_annotation.dart';
import 'package:testenovo/data_source/entry/product_entry/product_entry/product_entry.dart';

part 'product_list.g.dart';

@JsonSerializable()
class ProductList {
  List<ProductEntry> products;
  ProductList({required this.products});
  factory ProductList.fromJson(Map<String, dynamic> json) {
    return _$ProductListFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$ProductListToJson(this);
  }
}
