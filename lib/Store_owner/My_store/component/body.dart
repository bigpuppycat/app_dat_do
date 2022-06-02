import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
              children: [
                Text(
                  'Chào mừng bạn tới GoodStore - chỉ còn vài bước để hoàn thành',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Tài khoản của bạn đã được tạo thành công. Đây là vài điều bạn có thể làm ngay để bắt đầu bảo vệ thức ăn cùng TooGood',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              height: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal.shade900,
                  ),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.light_mode,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          Text('Chỉ dẫn nhanh', style: TextStyle(fontSize: 18)),
                          Spacer(),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
          const Text('set up your account(0/5)'),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: const BorderSide(
                  color: Color.fromARGB(255, 36, 82, 38),
                  width: 1,
                ),
              ),
              primary: Colors.white,
            ),
            onPressed: () {},
            child: Expanded(
              child: Row(children: const [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 24.0,
                ),
                Text(
                  'Thêm miêu tả về cửa hàng của bạn',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(
                  color: Color.fromARGB(255, 36, 82, 38),
                  width: 1,
                ),
              ),
              primary: Colors.white,
            ),
            onPressed: () {},
            child: Expanded(
              child: Row(children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 24.0,
                ),
                Text(
                  'Thêm thông tin về gói đồ của bạn',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Thêm thông tin về gói đồ của bạn',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Cài đặt lặp lại đơn hàng tuần',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Học cách để gửi đi những phần thức ăn đến hạn',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Hoàn thành bước cuối của tài khoản nhé',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
