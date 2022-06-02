import 'package:app_dat_do/discover/discover.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'log_in/signin.dart';
import 'theme.dart';
import 'more/more.dart';
import 'browser/Browse.dart';
import 'Store_owner/My_store/mystore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.fyoi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: Mystore.routeName,
      routes: routes,
    );
  }
}
