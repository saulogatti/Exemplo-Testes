import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String description;
  final double price;
  final List<String> images;

  const ProductCard({
    super.key,
    required this.description,
    required this.price,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(description),
        subtitle: Text(price.toString()),
        leading: images.isNotEmpty
            ? Image.network(images[0], width: 50, height: 50, fit: BoxFit.cover)
            : const SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.image_not_supported),
              ),
      ),
    );
  }
}
