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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(bottom: 6),
      width: double.infinity,
      height: 54,
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
        label: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, onPress);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
