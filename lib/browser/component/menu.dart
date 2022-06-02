import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            child: Icon(Icons.arrow_forward, color: Colors.black),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            child: Icon(Icons.arrow_forward, color: Colors.black),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
