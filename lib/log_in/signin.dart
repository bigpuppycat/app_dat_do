import 'package:flutter/material.dart';
import 'component/body.dart';

class Signin extends StatelessWidget {
  static String routeName = "/home";

  const Signin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
