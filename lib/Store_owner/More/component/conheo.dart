import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Align(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const MoreBulder(
                  title: 'Tài khoản', icon: Icons.account_circle, onPress: ''),
              const MoreBulder(
                title: 'Đơn',
                icon: Icons.receipt,
                onPress: '',
              ),
              const MoreBulder(
                title: 'Blog',
                icon: Icons.newspaper,
                onPress: '',
              ),
              const MoreBulder(
                title: 'Hỗ trợ',
                icon: Icons.call,
                onPress: '',
              ),
              const MoreBulder(
                title: 'Điều khoản',
                icon: Icons.beenhere_outlined,
                onPress: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoreBulder extends StatelessWidget {
  const MoreBulder(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPress})
      : super(key: key);

  final IconData icon;
  final String title;
  final String onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      // height: 48,
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          size: 24,
          color: Colors.black,
        ),
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        onPressed: () {
          onPress;
        },

// alo heo luu lai trang nay di
        label: Text(title),
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: RichText(
        //     text: TextSpan(
        //       children: [
        //         WidgetSpan(
        //           child: Container(
        //             padding: EdgeInsets.symmetric(vertical: 8.0),
        //             child:
        //           ),
        //         ),
        //         TextSpan(
        //           text: title,
        //           style: const TextStyle(
        //             fontWeight: FontWeight.bold,
        //             color: Colors.black,
        //             fontSize: 18,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
