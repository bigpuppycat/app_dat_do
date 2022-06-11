import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.head1,
  }) : super(key: key);
  final String head1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          head1,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        TextButton(
          // , heo cố lênlênlên XDD
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
