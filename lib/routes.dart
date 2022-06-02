import 'package:flutter/widgets.dart';
import 'Store_owner/My_store/mystore.dart';
import 'browser/Browse.dart';
import 'discover/discover.dart';
import 'log_in/signin.dart';
import 'more/more.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Discover.routeName: (context) => const Discover(),
  Signin.routeName: (context) => const Signin(),
  More.routeName: (context) => const More(),
  Browse.routeName: (context) => const Browse(),
  Mystore.routeName: (context) => const Mystore(),
};
