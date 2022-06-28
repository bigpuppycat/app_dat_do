import 'package:flutter/widgets.dart';
import 'Store_owner/bottom_navigation_mystore.dart';
import 'bottom_navigation.dart';
import 'log_in/signin.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Signin.routeName: (context) => const Signin(),
  BottomNavigationmystore.routeName: (context) =>
      const BottomNavigationmystore(),
  BottomNavigation.routeName: (context) => const BottomNavigation(),
};
