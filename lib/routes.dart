import 'package:flutter/widgets.dart';
import 'discover/discover.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Discover.routeName: (context) => const Discover(),
};
