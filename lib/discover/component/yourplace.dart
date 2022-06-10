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
        Container(
          padding: const EdgeInsets.only(left: 8),
          // anh bi freez oi :)) khong biet sai dau
          // bị đóng băng oe uh freeze o trang dau luon
// khó xử ghê
          child: Column(
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
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              primary: const Color.fromARGB(11, 108, 108, 108),
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
