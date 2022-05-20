import 'package:flutter/material.dart';
import 'component/body.dart';

class More extends StatelessWidget {
  static String routeName = "/more";

  const More({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
