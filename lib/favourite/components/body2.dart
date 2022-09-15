import 'package:app_dat_do/favourite/components/product2.dart';
import 'package:flutter/material.dart';
import 'package:app_dat_do/favourite/components/card2.dart';

class Body2 extends StatelessWidget {
  var size, height, width;

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Column(
        children: [
          Container(
            height: height * 0.1,
            width: width * 0.9,
            padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.03),
            child: Text(
              'Your favorites',
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 30),
            ),
          ),
          Products2(),
        ],
      ),
    );
  }
}
