import 'package:flutter/material.dart';
import 'package:app_dat_do/more/component/button.dart';
import 'package:app_dat_do/more/component/user/data.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        builders.length,
        (index) => SizedBox(
          width: double.infinity,
          child: Button1(
            title: builders[index].title,
            icon: builders[index].icon,
            onPress: builders[index].onPress,
          ),
        ),
      ),
    );
  }
}
