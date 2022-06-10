import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final IconData icon;
  final String title;
  final String onPress;

  const Button1({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      width: 350,
      height: 48,
      child: ElevatedButton.icon(
        // style: ,
        icon: Icon(
          icon,
          size: 24,
          color: Colors.black,
        ),
        label: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          onPress;
        },

        style: ButtonStyle(
          // padding: (5),
          alignment: Alignment.centerLeft,
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        // child: RichText(
        //   text: TextSpan(
        //     children: [
        //       WidgetSpan(

        //       TextSpan(
        //         text: title,
        //         style: const TextStyle(
        //           fontWeight: FontWeight.bold,
        //           color: Colors.black,
        //           fontSize: 18,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
