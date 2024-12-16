import 'package:app_dat_do/favourite/components/product2.dart';
import 'package:flutter/material.dart';
import 'package:app_dat_do/favourite/components/card2.dart';

class Body2 extends StatelessWidget {
  var size, height, width;
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.08,
              width: width,
              padding: EdgeInsets.only(top: height * 0.018, left: width * 0.05),
              child: Text(
                'Your favorites',
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
            Products2(),
          ],
        ),
      ),
    );
  }
}
