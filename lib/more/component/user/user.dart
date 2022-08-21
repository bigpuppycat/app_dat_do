import 'package:flutter/material.dart';
import 'package:app_dat_do/more/component/user/usermenu.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);
  static String routeName = '/User';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'More',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.infinity,
          child: Align(
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 16,
                ),
                Menu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
