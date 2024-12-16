import 'package:flutter/material.dart';
import 'card2.dart';
import 'data2.dart';

class Products2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          products.length,
          (index) => Card2(
            conlai: products[index].conlai,
            shopavatar: products[index].shopavatar,
            shopcover: products[index].shopcover,
            shopname: products[index].shopname,
            foodytail: products[index].foodytail,
            date: products[index].date,
            rate: products[index].rate,
            distance: products[index].distance,
            preprice: products[index].preprice,
            price: products[index].price,
          ),
        ),
      ),
    );
  }
}
