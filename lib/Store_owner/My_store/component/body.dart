import 'package:app_dat_do/Store_owner/My_store/component/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // alignment: AlignmentGeometry(),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black45),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Chào mừng bạn tới GoodStore - chỉ còn vài bước để tham gia!',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 18),
                      child: Text(
                        'Tài khoản của bạn đã được tạo thành công. Đây là vài điều bạn có thể làm ngay để bắt đầu bảo vệ thức ăn cùng TooGood',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade900,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20.0, left: 6),
                            child: Icon(
                              Icons.lightbulb_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Chỉ dẫn nhanh cho',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 4,
                              ),
                              Text('TooGood',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('set up your account(0/5)'),
                ),
                ButtonBuilder(
                    title: 'Thêm miêu tả về cửa hàng của bạn',
                    subtitle: 'Kể một chút về cửa hàng của bạn',
                    onPress: () {
                      Navigator.pushNamed(context, '/Detail');
                    }),
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
          const SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black45),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Bạn sẽ sớm nhận được tin từ chúng tôi',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Chúng tôi sẽ liên lạc lại với bạn sau vài ngày để xác nhận thông tin của bạn và giúp bạn bắt đầu.',
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Bạn đã sẵn sàng xuất diện trên TooGood? Liên lạc với chúng tôi 0963923072 ',
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
