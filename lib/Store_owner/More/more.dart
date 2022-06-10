import 'package:flutter/material.dart';
import 'component/body.dart';

class OwnerMore extends StatelessWidget {
  static String routeName = "/ownermore";

  const OwnerMore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
