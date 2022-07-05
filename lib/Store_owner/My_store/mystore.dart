import 'package:flutter/material.dart';

import 'component/body.dart';

class Mystore extends StatelessWidget {
  const Mystore({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 5,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black54,
              ),
            ),
          ]),
      body: const Body(),
    );
  }
}
