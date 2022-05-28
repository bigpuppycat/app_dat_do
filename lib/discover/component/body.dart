import 'package:flutter/material.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
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
              Container(
                // padding: const EdgeInsets.only(
                //   left: 20.0,
                // ),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 2.0, top: 0),
                      child: Icon(
                        Icons.person_pin_circle,
                        size: 18,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'Tân Mai, Hà Nội',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'trong vòng 5km',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.


