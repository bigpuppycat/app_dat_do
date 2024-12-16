import 'package:flutter/material.dart';
import 'list.dart';

List<MoreBuilder> builders = [
  MoreBuilder(
    title: 'Tài khoản',
    icon: Icons.account_circle,
    onPress: '/User',
  ),
  MoreBuilder(
    title: 'Đơn hàng',
    icon: Icons.receipt,
    onPress: '',
  ),
  MoreBuilder(
    title: 'Hỗ trợ',
    icon: Icons.call,
    onPress: '/hotro',
  ),
  MoreBuilder(
    title: 'Blog',
    icon: Icons.newspaper,
    onPress: '',
  ),
  // MoreBuilder(
  //   title: 'Điều khoản',
  //   icon: Icons.beenhere_outlined,
  //   onPress: '',
  // ),
  MoreBuilder(
    title: 'Cửa hàng của tôi',
    icon: Icons.beenhere_outlined,
    onPress: '/Ownermenu',
  ),
  MoreBuilder(
    title: 'Dang bai',
    icon: Icons.newspaper,
    onPress: '/Dangbai',
  ),
];
