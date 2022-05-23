import 'package:app_dat_do/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';

class Discover extends StatelessWidget {
  static String routeName = "/discover";

  const Discover({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
