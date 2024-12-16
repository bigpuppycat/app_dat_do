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
          'Tài khoản',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: const Color(0xFFFCF9F2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
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
    );
  }
}
