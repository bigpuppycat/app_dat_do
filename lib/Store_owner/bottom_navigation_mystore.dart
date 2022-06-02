import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'My_store/mystore.dart';

class BottomNavigationmystore extends StatefulWidget {
  const BottomNavigationmystore({Key? key}) : super(key: key);

  @override
  State<BottomNavigationmystore> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavigationmystore> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Mystore(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
            padding: EdgeInsets.only(bottom: 8, top: 8),
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
            padding: EdgeInsets.only(bottom: 8, top: 8),
            child: SvgPicture.asset(
              "assets/more.svg",
              height: 24,
              width: 24,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(bottom: 8, top: 8),
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
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      selectedFontSize: 12,
      unselectedFontSize: 12,
    );
  }
}
