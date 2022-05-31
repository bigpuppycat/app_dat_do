import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: Row(children: [
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
