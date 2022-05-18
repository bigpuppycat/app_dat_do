import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Đồ ăn cho heo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 100,
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
            // RaisedButton(
            //   child: const Text("heo bé"),
            //   onPressed: () {},
            // )
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {},
                child: const Text('Đăng nhập bằng GOOGLE')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Foreground color
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                // Background color
                primary: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: () {},
              child: const Text('Đăng nhập bằng FACEBOOK'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Foreground color
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                // Background color
                primary: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: () {},
              child: const Text('Đăng nhập bằng EMAIL'),
            ),
          ],
        ),
      ),
    );
  }
}
