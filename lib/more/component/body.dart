import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                MoreBulder(
                    title: 'Tài khoản',
                    icon: Icons.account_circle,
                    onPress: ''),
                MoreBulder(
                  title: 'Đơn',
                  icon: Icons.receipt,
                  onPress: '',
                ),
                MoreBulder(
                  title: 'Blog',
                  icon: Icons.newspaper,
                  onPress: '',
                ),
                MoreBulder(
                  title: 'Hỗ trợ',
                  icon: Icons.call,
                  onPress: '',
                ),
                MoreBulder(
                  title: 'Điều khoản',
                  icon: Icons.home,
                  onPress: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MoreBulder extends StatelessWidget {
  MoreBulder({required this.title, required this.icon, required this.onPress});

  final IconData icon;
  final String title;
  final String onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
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
        child: RichText(
          // //1 dòng có icon và text
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  icon,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
