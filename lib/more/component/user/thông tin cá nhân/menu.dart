import 'package:flutter/material.dart';
import 'package:app_dat_do/more/component/user/thông tin cá nhân/data.dart';
import 'package:app_dat_do/more/component/user/thông tin cá nhân/button.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: List.generate(
              builders.length,
              (index) => SizedBox(
                child: Button1(
                  title: builders[index].title,
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
