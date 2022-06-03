import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  final String title;
  final String subtitle;
  final dynamic onPress;

  const ButtonBuilder(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(
              color: const Color.fromARGB(255, 36, 82, 38),
              width: 1,
            ),
          ),
          primary: Colors.white,
        ),
        onPressed: onPress,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: const Icon(
                Icons.add_circle_outline,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 230,
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
                  width: 230,
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
          ],
        ),
      ),
    );
  }
}
