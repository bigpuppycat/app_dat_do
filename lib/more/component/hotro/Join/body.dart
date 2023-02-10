import 'package:flutter/material.dart';
import 'package:app_dat_do/more/component/hotro/Join/menu.dart';

class Join extends StatelessWidget {
  Join({Key? key}) : super(key: key);
  static String routeName = '/Join';
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Hồ sơ',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 0.033 * width, right: 0.033 * width),
        child: Align(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 0.02 * height,
              ),
              Menu(),
            ],
          ),
        ),
      ),
    );
  }
}
