import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/body2.dart';

class Favourite extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    int like = 1;
    if (like == 0)
      return Body();
    else
      return Body2();
  }
}
