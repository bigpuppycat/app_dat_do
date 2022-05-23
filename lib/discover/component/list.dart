import 'package:flutter/material.dart';

// data for popular_product.dart
class Product extends StatelessWidget {
  final String shopavatar,
      shopcover,
      title,
      title2,
      type,
      date,
      distance,
      rate,
      price;

  const Product({
    Key? key,
    required this.date,
    required this.shopcover,
    required this.shopavatar,
    required this.title,
    required this.title2,
    required this.price,
    required this.type,
    required this.distance,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
