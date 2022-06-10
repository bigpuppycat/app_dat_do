import 'package:app_dat_do/Store_owner/detail/component/button1.dart';
import 'package:flutter/material.dart';

import 'button2.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 14),
            child: Text(
              'Nhập thông tin cửa hàng của bạn',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: Text(
              'Kể chúng tôi nghe một chút về cửa hàng của bạn để chúng tôi giúp bạn mở tài khoản',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            "Tên cửa hàng của bạn và địa chỉ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 18),
            child: Text(
              'Lưu ý xác nhận hoặc viết chính xác tên cửa hàng và địa chỉ của bạn ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            // alignment: AlignmentGeometry(),
            // padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 100.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      image: DecorationImage(
                        image: AssetImage("assets/image/shop-image (1).jpeg"),
                        fit: BoxFit.cover,
                      ),
                    )),
                ButtonBuilder1(
                    title: 'Thêm miêu tả về cửa hàng của bạn',
                    subtitle: 'Kể một chút về cửa hàng của bạn',
                    onPress: () {}),
                ButtonBuilder1(
                    title: 'Thêm thông tin gói đồ ăn',
                    subtitle:
                        'Kể một chút về gói đồ ăn của cửa hàng bạn cung cấp',
                    onPress: () {}),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12.0, top: 24),
            child: Text(
              'Loại cửa hàng',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Chọn loại cửa hàng miêu tả bạn tốt nhất ',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          ButtonBuilder2(
              title: 'nhà ăn',
              // subtitle: 'Kể một chút về cửa hàng của bạn',
              onPress: () {}),
          ButtonBuilder2(
              title: 'quán Caffe',
              // subtitle: 'Kể một chút về gói đồ ăn của cửa hàng bạn cung cấp',
              onPress: () {}),
          ButtonBuilder2(
              title: 'Buffet',
              // subtitle:
              //     'Tạo lịch lặp lại mỗi tuần cho các buổi sẽ có đồ ăn thừa',
              onPress: () {}),
          ButtonBuilder2(
              title: 'Nhà hàng chỉ bán mang đi Takeout ', onPress: () {}),
          ButtonBuilder2(title: 'Hotel', onPress: () {}),
          ButtonBuilder2(title: 'Cửa hàng bánh', onPress: () {}),
          ButtonBuilder2(title: 'Bánh mỳ', onPress: () {}),
          ButtonBuilder2(title: 'Nước uống', onPress: () {}),
          ButtonBuilder2(title: 'Thịt', onPress: () {}),
          ButtonBuilder2(title: 'Rau củ quả', onPress: () {}),
          ButtonBuilder2(title: 'khác', onPress: () {}),
          Center(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  child: Text("Lưu thông tin".toUpperCase(),
                      style: const TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      // padding: Padding(padding: padding),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(12, 0, 0, 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                  onPressed: () => null),
            ),
          ),
        ],
      ),
    ));
  }
}
