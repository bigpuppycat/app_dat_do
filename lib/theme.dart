import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      toolbarHeight: 0,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Color(0xFFFCF9F2),
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFFCF9F2),
    fontFamily: "roboto",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
