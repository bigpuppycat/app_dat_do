import 'package:flutter/material.dart';
import 'menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Align(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Menu(),
                const SizedBox(
                  height: 100,
                ),
                const Icon(
                  Icons.store_outlined,
                  size: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Center(
                    child: Text(
                      'Bạn có phải chủ cửa hàng?',
                    ),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('Tham gia TooGood ngay '),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('để giảm đồ ăn lãng phí.'),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  // label: const Text('Tìm hiểu'),
                  // icon: const Icon(Icons.keyboard_arrow_right),
                  label: Icon(Icons.keyboard_arrow_right),
                  icon: const Text('Tìm hiểu'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
