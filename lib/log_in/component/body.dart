import 'package:app_dat_do/discover/discover.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  var size, h, w;
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 0.064 * h,
              ),
              Text(
                'Đồ ăn cho heo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 0.051 * h,
              ),
              Container(
                height: 0.51 * h,
                width: 1.093 * w,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/2.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 0.02 * h, horizontal: 0.219 * w)),
                  onPressed: () {
                    Navigator.pushNamed(context, Discover.routeName);
                  },
                  child: Text('Đăng nhập bằng GOOGLE')),
              SizedBox(
                height: 0.02 * h,
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
                  padding: EdgeInsets.symmetric(
                      vertical: 0.02 * h, horizontal: 0.202 * w),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Discover.routeName);
                },
                child: Text('Đăng nhập bằng FACEBOOK'),
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Foreground color
                  onPrimary: Theme.of(context).colorScheme.onPrimary,
                  // Background color
                  primary: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(
                      vertical: 0.02 * h, horizontal: 0.24 * w),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Discover.routeName);
                },
                child: Text('Đăng nhập bằng EMAIL'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
