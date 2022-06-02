import 'package:flutter/material.dart';
import '../bottom_navigation_mystore.dart';
import 'component/body.dart';

class Mystore extends StatelessWidget {
  static String routeName = "/mystore";

  const Mystore({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 5,
          backgroundColor: const Color(0xFFFCF9F2),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.black,
              ),
            ),
          ]),
      body: const Body(),
      bottomNavigationBar: const BottomNavigationmystore(),
    );
  }
}
