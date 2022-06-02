import 'package:app_dat_do/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'component/body.dart';

class Browse extends StatelessWidget {
  static String routeName = "/browse";

  const Browse({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
