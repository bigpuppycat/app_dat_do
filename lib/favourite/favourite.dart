import 'package:app_dat_do/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class Favourite extends StatelessWidget {
  static String routeName = "/home";

  const Favourite({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
