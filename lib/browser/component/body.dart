import 'package:app_dat_do/browser/component/popular_product.dart';
import 'package:app_dat_do/browser/component/twobutton.dart';
import 'package:app_dat_do/browser/component/user_address.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

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
    return Container(
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 0.023 * h, horizontal: 0.049 * w),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0.027 * h, bottom: 0.027 * h),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tìm kiếm',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              YourPlace(),
              TwoButton(),
              Section(),
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
              YourProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.
