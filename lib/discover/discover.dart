import 'package:flutter/material.dart';
import 'component/body.dart';

class Discover extends StatelessWidget {
  static String routeName = "/discover";

  Discover({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
