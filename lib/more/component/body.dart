import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../phone/login_screen.dart';
import 'menu.dart';

class Body extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
              FloatingActionButton(
                onPressed: () async {
                  await _auth.signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Icon(Icons.logout),
              ),
              //butoon menu

              const Menu(),

              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.store_outlined,
                size: 65,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Bạn có phải chủ cửa hàng?',
                ),
              ),
              const Center(
                child: Text('Tham gia TooGood ngay '),
              ),
              const Center(
                child: Text('để giảm đồ ăn lãng phí.'),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/Dangki');
                },
                // label: const Text('Tìm hiểu'),
                // icon: const Icon(Icons.keyboard_arrow_right),
                label: const Icon(Icons.keyboard_arrow_right),
                icon: const Text('Tìm hiểu'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
