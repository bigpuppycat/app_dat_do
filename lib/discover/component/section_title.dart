import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  var size, h, w;
  SectionTitle({
    Key? key,
    required this.head1,
  }) : super(key: key);
  final String head1;
//em pương cũng ở đây.
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 0.049 * w, bottom: 0.02 * h),
          child: Text(
            head1,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
        TextButton(
          onPressed: () {},
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
