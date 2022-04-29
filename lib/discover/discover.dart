import 'package:app_dat_do/bottom_navigation.dart';
import 'package:app_dat_do/discover/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'component/body.dart';

class Discover extends StatelessWidget {
  static String routeName = "/home";

  const Discover({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
