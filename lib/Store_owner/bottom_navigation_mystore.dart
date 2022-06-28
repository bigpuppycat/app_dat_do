import 'package:app_dat_do/Store_owner/More/more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'My_store/mystore.dart';

class BottomNavigationmystore extends StatefulWidget {
  static String routeName = '/Ownermenu';
  const BottomNavigationmystore({Key? key}) : super(key: key);

  @override
  State<BottomNavigationmystore> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavigationmystore> {
  int selectedPage = 0;

  final _pageOptions = [
    const Mystore(),
    const OwnerMore(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                child: SvgPicture.asset(
                  "assets/store.svg",
                  height: 24,
                  width: 24,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: SvgPicture.asset(
                  "assets/store.svg",
                  height: 24,
                  width: 24,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              label: 'Cửa hàng',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: SvgPicture.asset(
                  "assets/more.svg",
                  height: 24,
                  width: 24,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: SvgPicture.asset(
                  "assets/more.svg",
                  height: 24,
                  width: 24,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              label: 'Khác',
            ),
          ],
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          selectedItemColor: Colors.green[900],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          currentIndex: selectedPage,
          selectedFontSize: 12,
          unselectedFontSize: 12,
        ));
  }
}
