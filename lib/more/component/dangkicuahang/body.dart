import 'package:flutter/material.dart';
import 'package:app_dat_do/more/component/dangkicuahang/menu.dart';

class Dangki extends StatelessWidget {
  Dangki({Key? key}) : super(key: key);
  static String routeName = '/Dangki';
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help center',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: Color(0xFFFCF9F2),
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
              Container(
                height: height * 0.13,
                width: width * 0.2,
                child: Image.asset(
                  'assets/cam.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 0.02 * height,
              ),
              Container(
                height: height * 0.03,
                width: width,
                alignment: Alignment.center,
                child: Text(
                  'How can we help you?',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 0.02 * height,
              ),
              Container(
                height: height * 0.03,
                width: width,
                alignment: Alignment.center,
                child: Text(
                  'Please choose a topic from below',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Menu(),
            ],
          ),
        ),
      ),
    );
  }
}
