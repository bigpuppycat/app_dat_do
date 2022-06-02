import 'package:flutter/material.dart';

class YourPlace extends StatelessWidget {
  const YourPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: <Widget>[
            RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.person_pin_circle,
                      size: 18,
                    ),
                  ),
                  TextSpan(
                    text: 'Tân Mai, Hà Nội',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'trong vòng 5km',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              primary: const Color.fromARGB(33, 110, 110, 110),
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            child: Text('Thay đổi',
                style: TextStyle(
                  color: Colors.black.withOpacity(1.0),
                ))),
      ],
    );
  }
}
