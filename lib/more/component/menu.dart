import 'package:flutter/material.dart';
import 'data.dart';
import 'button.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Column(
            children: List.generate(
              builders.length,
              (index) => SizedBox(
                child: Button1(
                  title: builders[index].title,
                  icon: builders[index].icon,
                  onPress: builders[index].onPress,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
