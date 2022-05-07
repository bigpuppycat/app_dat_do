import 'package:app_dat_do/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Browse extends StatelessWidget {
  static String routeName = "/home";

  const Browse({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
