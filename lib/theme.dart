import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: Color.fromARGB(255, 251, 248, 242),
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Color.fromARGB(255, 251, 248, 242),
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 251, 248, 242),
    fontFamily: "Open Sans",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
