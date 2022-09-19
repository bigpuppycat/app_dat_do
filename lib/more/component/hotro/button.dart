import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String icon;
  final String title;
  final String onPress;
  var size, height, width;

  Button1({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: width * 0.9,
        height: height * 0.1,
        child: ElevatedButton.icon(
          icon: Image.asset(
            icon,
            width: height * 0.1,
            height: height * 0.1,
          ),
          label: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, onPress);
          },
          style: ButtonStyle(
            alignment: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
