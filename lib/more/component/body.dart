import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
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
                ),
                MoreBulder(title: 'Đơn', icon: Icons.list_alt),
                MoreBulder(title: 'Hỗ trợ', icon: Icons.light_outlined),
                MoreBulder(title: 'Blog', icon: Icons.newspaper),
                MoreBulder(title: 'Điều khoản', icon: Icons.beenhere_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MoreBulder extends StatelessWidget {
  MoreBulder({required this.title, required this.icon});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          ;
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
