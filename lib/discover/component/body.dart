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
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
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
              YourPlace(),
              PopularProducts(),
              heo1(),
              heo2(),
              heo3(),
              heo4(),
              heo5(),
              heo6(),
              heo7(),
              heo8(),
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.


