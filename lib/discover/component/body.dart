import 'package:app_dat_do/discover/component/yourplace.dart';
import 'package:flutter/material.dart';
import 'heo1.dart';
import 'heo2.dart';
import 'heo3.dart';
import 'heo4.dart';
import 'heo5.dart';
import 'heo6.dart';
import 'heo7.dart';
import 'heo8.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 18),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Khám Phá',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const YourPlace(),
              const PopularProducts(),
              const Heo1(),
              const Heo2(),
              const Heo3(),
              const Heo4(),
              const Heo5(),
              const Heo6(),
              const Heo7(),
              const Heo8(),
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.


