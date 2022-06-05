import 'package:flutter/material.dart';
import '../bottom_navigation_mystore.dart';
import 'component/body.dart';

class Detail extends StatelessWidget {
  static String routeName = "/detail";

  const Detail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        //đỉnh quá coos len nao letsquáquá
        body: const Body(),
        bottomNavigationBar: const BottomNavigationmystore());
  }
}
