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
  var size, h, w;
  Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 0.013,
          ),
          YourPlace(),
          PopularProducts(),
          Heo1(),
          Heo2(),
          Heo3(),
          Heo4(),
          Heo5(),
          Heo6(),
          Heo7(),
          Heo8(),
        ],
      ),
    );
  }
}
// TODO Implement this library.


