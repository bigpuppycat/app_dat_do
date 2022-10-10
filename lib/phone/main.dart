import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../bottom_navigation.dart';
import 'login_screen.dart';

class InitializerWidget extends StatefulWidget {
  static String routeName = '/InitializerWidget';
  @override
  _InitializerWidgetState createState() => _InitializerWidgetState();
}

class _InitializerWidgetState extends State<InitializerWidget> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user = FirebaseAuth.instance.currentUser;

  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _user = _auth.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : _user == null
            ? LoginScreen()
            : BottomNavigation();
  }
}
