class ProductModel {
  int id;
  int stock;
  List<String>? images;

  String? description;

  double price;
  ProductModel({
    required this.id,
    this.images,
    this.description,
    required this.price,
    required this.stock,
  });
}
