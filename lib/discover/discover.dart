import 'package:app_dat_do/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';
import 'component/product_cart.dart';

class Discover extends StatelessWidget {
  final Product product;
  static String routeName = "/discover";

  const Discover({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
