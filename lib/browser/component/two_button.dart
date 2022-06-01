import 'package:flutter/material.dart';

class twoButton extends StatelessWidget {
  twoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                        color: const Color.fromARGB(255, 17, 77, 77)))),
          ),
          onPressed: null,
          child: const Text('Danh sách'),
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                        color: const Color.fromARGB(255, 17, 77, 77)))),
          ),
          onPressed: null,
          child: const Text('Bản đồ'),
        )
      ],
    );
  }
}
