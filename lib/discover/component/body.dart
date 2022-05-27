import 'package:flutter/material.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Khám Phá',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 6.0),
                    child: Icon(
                      Icons.person_pin_circle,
                      size: 18,
                    ),
                  ),
                  Text(
                    'Tân Mai, Hà Nội',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                ], //ụt
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35.0, bottom: 18),
              alignment: Alignment.centerLeft,
              child: const Text(
                'trong vòng 5km',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: PopularProducts(),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.
