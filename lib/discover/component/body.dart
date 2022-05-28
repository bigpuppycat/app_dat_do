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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Container(
                                  child: const Icon(
                                    Icons.person_pin_circle,
                                    size: 18,
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text: 'Tân Mai, Hà Nội',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gói đồ ăn gần bạn',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(children: [
                      Text(
                        'Xem thêm',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF17443f),
                        ),
                      ),
                      Icon(Icons.chevron_right),
                    ]),
                  ),
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


