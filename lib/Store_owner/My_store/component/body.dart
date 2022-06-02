import 'package:app_dat_do/Store_owner/My_store/component/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
          ),
          child: Column(
            children: [
              Column(
                children: const [
                  Text(
                    'Chào mừng bạn tới GoodStore - chỉ còn vài bước để hoàn thành',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Tài khoản của bạn đã được tạo thành công. Đây là vài điều bạn có thể làm ngay để bắt đầu bảo vệ thức ăn cùng TooGood',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: SizedBox(
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade900,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.light_mode,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Chỉ dẫn nhanh cho',
                                style: TextStyle(fontSize: 20)),
                            Text('TooGood', style: TextStyle(fontSize: 18))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text('set up your account(0/5)'),
              ButtonBuilder(
                  title: 'Thêm miêu tả về cửa hàng của bạn',
                  subtitle: 'Kể một chút về cửa hàng của bạn',
                  onPress: () {}),
              ButtonBuilder(
                  title: 'Thêm thông tin gói đồ ăn',
                  subtitle:
                      'Kể một chút về gói đồ ăn của cửa hàng bạn cung cấp',
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
        ),
      ),
    );
  }
}
