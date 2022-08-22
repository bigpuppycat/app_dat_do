import 'package:app_dat_do/more/component/user/user.dart';
import 'package:flutter/widgets.dart';
import 'Store_owner/bottom_navigation_mystore.dart';
import 'bottom_navigation.dart';
import 'log_in/signin.dart';
import 'package:app_dat_do/more/component/user/thông tin cá nhân/userdetail.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Signin.routeName: (context) => const Signin(),
  User.routeName: (context) => const User(),
  BottomNavigation.routeName: (context) => const BottomNavigation(),
  BottomNavigationmystore.routeName: (context) =>
      const BottomNavigationmystore(),
  userdetail.routeName: (context) => const userdetail(),
};
