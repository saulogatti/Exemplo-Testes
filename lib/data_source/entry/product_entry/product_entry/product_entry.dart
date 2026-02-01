import 'package:json_annotation/json_annotation.dart';
import 'package:testenovo/domain/models/product/product_model.dart';

import 'dimensions.dart';
import 'meta.dart';
import 'review.dart';

part 'product_entry.g.dart';

@JsonSerializable()
class ProductEntry extends ProductModel {
  String? title;
  String? category;

  double? discountPercentage;
  double? rating;

  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Review>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;

  String? thumbnail;
  ProductEntry({
    super.id = 0,
    this.title,
    super.description,
    this.category,
    super.price = 0.0,
    this.discountPercentage,
    this.rating,
    super.stock = 0,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    super.images,
    this.thumbnail,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) {
    return _$ProductEntryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductEntryToJson(this);

  @override
  String toString() {
    return 'ProductEntry(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }
}
