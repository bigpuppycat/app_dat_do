import 'package:app_dat_do/browser/Browse.dart';
import 'package:app_dat_do/favourite/favourite.dart';
import 'more/more.dart';
import 'package:app_dat_do/discover/discover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Discover(),
    const Browse(),
    const Favourite(),
    const More(),
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
          activeIcon: SvgPicture.asset(
            "assets/compass-fill.svg",
            height: 24,
            width: 24,
          ),
          icon: SvgPicture.asset(
            "assets/compass.svg",
            height: 24,
            width: 24,
            color: Colors.grey.withOpacity(0.8),
          ),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/shopping-fill.svg",
            height: 24,
            width: 24,
          ),
          icon: SvgPicture.asset(
            "assets/shopping.svg",
            height: 24,
            width: 24,
            color: Colors.grey.withOpacity(0.8),
          ),
          label: 'Browse',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/heart-fill.svg",
            height: 24,
            width: 24,
          ),
          icon: SvgPicture.asset(
            "assets/heart.svg",
            height: 24,
            width: 24,
            color: Colors.grey.withOpacity(0.8),
          ),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/more.svg",
            height: 24,
            width: 24,
          ),
          icon: SvgPicture.asset(
            "assets/more.svg",
            height: 24,
            width: 24,
            color: Colors.grey.withOpacity(0.8),
          ),
          label: 'More',
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
