import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.head1,
  }) : super(key: key);
  final String head1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: ,
      children: [
        Text(
          head1,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        TextButton(
          onPressed: () {},
          child: Row(children: const [
            Text(
              'Xem thêm',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF17443f),
              ),
            ),
            Icon(Icons.chevron_right),
          ]),
        ),
      ],
    );
  }
}
