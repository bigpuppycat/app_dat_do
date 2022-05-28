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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // alignment: crossAxisAlignment.to,
                    // padding: EdgeInsets.only(right: 2.0),
                    child: Icon(
                      Icons.person_pin_circle,
                      size: 18,
                    ),
                  ),
                  Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
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
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: const Color.fromARGB(33, 110, 110, 110),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      child: Text('Thay đổi',
                          style: TextStyle(
                            color: Colors.black.withOpacity(1.0),
                          ))),
                ],
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


// làm gì đấy