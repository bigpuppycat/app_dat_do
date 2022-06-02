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
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
            color: const Color.fromARGB(255, 36, 82, 38),
            width: 2,
          ),
        ),
        primary: Colors.white,
      ),
      onPressed: onPress,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.black,
              size: 24.0,
            ),
          ),
          Column(children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

//data
List<ButtonBuilder> builders = [
  ButtonBuilder(
      title: 'Thêm miêu tả về cửa hàng của bạn',
      subtitle: 'Kể một chút về cửa hàng của bạn',
      onPress: () {}),
  ButtonBuilder(
      title: 'Thêm thông tin gói đồ ăn',
      subtitle: 'Kể một chút về gói đồ ăn của cửa hàng bạn cung cấp',
      onPress: () {}),
  ButtonBuilder(
      title: 'Cài đặt lặp lại gói đồ ăn hàng tuần',
      subtitle: 'Tạo lịch lặp lại mỗi tuần cho các buổi sẽ có đồ ăn thừa',
      onPress: () {}),
  ButtonBuilder(
      title: 'Học cách để gửi đi những phần thức ăn đến hạn',
      subtitle: 'Mọi điều bạn cần biết về việc chuận bị gói TooGood bất ngờ',
      onPress: () {}),
  ButtonBuilder(
      title: 'Hoàn thành bước cuối cùng của tài khoản nhé',
      subtitle:
          'Xác nhận thông tin cuối và bạn sẽ sẵn sàng để gia nhập cuộc chiến chống lại đồ ăn lãng phí',
      onPress: () {}),
];

//builder

