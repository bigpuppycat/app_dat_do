import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String title;
  final String onPress;

  const Button1({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(bottom: 6),
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        child: Row(
          children: [
            Container(
              width: 310,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(Icons.arrow_right),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, onPress);
        },
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
