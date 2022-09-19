import 'package:app_dat_do/Store_owner/My_store/mystore.dart';
import 'package:app_dat_do/more/component/user/user.dart';
import 'package:flutter/widgets.dart';
import 'Store_owner/bottom_navigation_mystore.dart';
import 'Store_owner/detail/detail.dart';
import 'bottom_navigation.dart';
import 'log_in/signin.dart';
import 'package:app_dat_do/more/component/user/thông tin cá nhân/userdetail.dart';

import 'more/component/dangkicuahang/Recommend/body.dart';
import 'more/component/dangkicuahang/SignStore/component/email.dart';
import 'more/component/dangkicuahang/SignStore/component/sodienthoai.dart';
import 'more/component/dangkicuahang/SignStore/tencuahang.dart';
import 'more/component/dangkicuahang/body.dart';
import 'more/component/hotro/Howtoo/body.dart';
import 'more/component/hotro/Join/body.dart';
import 'more/component/hotro/Myorder/body.dart';
import 'more/component/hotro/body.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Signin.routeName: (context) => const Signin(),
  User.routeName: (context) => const User(),
  BottomNavigation.routeName: (context) => const BottomNavigation(),
  BottomNavigationmystore.routeName: (context) =>
      const BottomNavigationmystore(),
  userdetail.routeName: (context) => const userdetail(),
  Help.routeName: (context) => Help(),
  Myorder.routeName: (context) => Myorder(),
  Howtoo.routeName: (context) => Howtoo(),
  Join.routeName: (context) => Join(),
  Dangki.routeName: (context) => Dangki(),
  Recommend.routeName: (context) => Recommend(),
  SignStore.routeName: (context) => SignStore(),
  Sodienthoai.routeName: (context) => Sodienthoai(),
  email.routeName: (context) => email(),
  Detail.routeName: (context) => Detail(),
  Mystore.routeName: (context) => Mystore(),
};
