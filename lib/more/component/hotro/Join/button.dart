import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String title;
  final String onPress;
  var size, height, width;

  Button1({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        width: width * 0.9,
        height: height * 0.05,
        child: ElevatedButton(
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
          child: Row(
            children: [
              Container(
                width: width * 0.85,
                height: height * 0.05,
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                child: Image.asset('assets/100.png'),
                width: height * 0.02,
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
