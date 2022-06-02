import 'package:app_dat_do/discover/discover.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Đồ ăn cho heo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                width: 400,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/2.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 80)),
                  onPressed: () {
                    Navigator.pushNamed(context, Discover.routeName);
                  },
                  child: const Text('Đăng nhập bằng GOOGLE')),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Foreground color
                  onPrimary: Theme.of(context).colorScheme.onPrimary,
                  // Background color
                  primary: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 74),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Discover.routeName);
                },
                child: const Text('Đăng nhập bằng FACEBOOK'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Foreground color
                  onPrimary: Theme.of(context).colorScheme.onPrimary,
                  // Background color
                  primary: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 88),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Discover.routeName);
                },
                child: const Text('Đăng nhập bằng EMAIL'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
