import 'package:flutter/material.dart';
import '../bottom_navigation_mystore.dart';
import 'package:app_dat_do/Store_owner/detail/component/body.dart';

class Detail extends StatelessWidget {
  static String routeName = "/Detail";

  const Detail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      //đỉnh quá coos len nao letsquáquá
      body: const Body(),
    );
  }
}
