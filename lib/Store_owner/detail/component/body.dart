import 'package:app_dat_do/Store_owner/My_store/component/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        child: Column(
          children: [
            Text(
              'Add your store detail',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Bạn đã sẵn sàng xuất diện trên TooGood? Liên lạc với chúng tôi 0963923072 ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "Your store's name and address",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Chúng tôi sẽ liên lạc lại với bạn sau vài ngày để xác nhận thông tin của bạn và giúp bạn bắt đầu.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Container(
              // alignment: AlignmentGeometry(),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100.0,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/shop-image (1).jpeg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('set up your account(0/5)'),
                  ),
                  ButtonBuilder(
                      title: 'Thêm miêu tả về cửa hàng của bạn',
                      subtitle: 'Kể một chút về cửa hàng của bạn',
                      onPress: () {}),
                  ButtonBuilder(
                      title: 'Thêm thông tin gói đồ ăn',
                      subtitle:
                          'Kể một chút về gói đồ ăn của cửa hàng bạn cung cấp',
                      onPress: () {}),
                ],
              ),
            ),
            Text(
              'Chúng tôi sẽ liên lạc lại với bạn sau vài ngày để xác nhận thông tin của bạn và giúp bạn bắt đầu.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Bạn đã sẵn sàng xuất diện trên TooGood? Liên lạc với chúng tôi 0963923072 ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
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
                subtitle:
                    'Tạo lịch lặp lại mỗi tuần cho các buổi sẽ có đồ ăn thừa',
                onPress: () {}),
            ButtonBuilder(
                title: 'Học cách để gửi đi những phần thức ăn đến hạn',
                subtitle:
                    'Mọi điều bạn cần biết về việc chuận bị gói TooGood bất ngờ',
                onPress: () {}),
            ButtonBuilder(
                title: 'Hoàn thành bước cuối cùng của tài khoản nhé',
                subtitle:
                    'Xác nhận thông tin cuối và bạn sẽ sẵn sàng để gia nhập cuộc chiến chống lại đồ ăn lãng phí',
                onPress: () {}),
          ],
        ),
      )
    ]));
  }
}
