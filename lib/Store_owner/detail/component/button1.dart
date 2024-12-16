import 'package:flutter/material.dart';

class ButtonBuilder1 extends StatelessWidget {
  final String title;
  final String subtitle;
  final dynamic onPress;

  const ButtonBuilder1(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Row(
        children: [
          Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 300,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                width: 300,
                child: Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                )),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
            child: Icon(
              Icons.edit,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
