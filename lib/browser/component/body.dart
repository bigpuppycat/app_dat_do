import 'package:app_dat_do/browser/component/popular_product.dart';
import 'package:app_dat_do/browser/component/twobutton.dart';
import 'package:app_dat_do/browser/component/user_address.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Tìm kiếm',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const YourPlace(),
              const TwoButton(),
              const Section(),
              Container(
                child: Text(
                  "sorted by: Nearby",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              const YourProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.
