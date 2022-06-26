import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      toolbarHeight: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Color(0xFFFCF9F2),
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFFCF9F2),
    fontFamily: "Open Sans",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
