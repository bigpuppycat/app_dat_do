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
              Builders.length,
              (index) => SizedBox(
                child: Button1(
                  title: Builders[index].title,
                  icon: Builders[index].icon,
                  onPress: Builders[index].onPress,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
