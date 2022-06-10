import 'package:flutter/widgets.dart';
import 'Store_owner/My_store/mystore.dart';

import 'bottom_navigation.dart';

import 'log_in/signin.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Signin.routeName: (context) => const Signin(),
  Mystore.routeName: (context) => const Mystore(),
  BottomNavigation.routeName: (context) => const BottomNavigation(),
};
