import 'package:app_dat_do/discover/component/list.dart';
import 'package:app_dat_do/discover/popular_product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // CardExample(),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.