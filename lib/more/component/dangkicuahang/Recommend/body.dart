import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  Recommend({Key? key}) : super(key: key);
  static String routeName = '/Recommend';
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Hồ sơ',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                    width: width * 0.9,
                  ),
                  Container(
                    height: height * 0.023,
                    width: width * 0.9,
                    child: Text(
                      'Suggest a store',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Know a store youd like to see on Too Good To Go? Let us know about it below',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18),
                  ),
                ],
              ),
              height: height * 0.13,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 63, 48),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 15,
              width: width * 0.9,
            ),
            Container(
              height: height * 0.025,
              width: width * 0.9,
              child: const Text(
                'Message',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
              width: width * 0.9,
            ),
            Container(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter your message here',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                      fontSize: 18),
                ),
              ),
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: height * 0.5,
              width: width * 0.9,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Foreground color
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                // Background color
                primary: Color.fromARGB(255, 4, 63, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 30, horizontal: width * 0.35),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: Text(
                'SEND',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
