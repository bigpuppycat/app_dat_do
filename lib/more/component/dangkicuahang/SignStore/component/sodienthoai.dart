import 'package:flutter/material.dart';

class Sodienthoai extends StatelessWidget {
  Sodienthoai({Key? key}) : super(key: key);
  static String routeName = '/Sodienthoai';
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
          'Join Too Good To Go',
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
              height: height * 0.02,
            ),
            Container(
              height: height * 0.025,
              width: width * 0.9,
              child: const Text(
                'Great! How about your company phone number',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              child: const Text(
                'zxjkcbasxjkcb askjc scak nasjkc nkasj sjka askjskaasjk asjk jksakaskas jk ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: height * 0.019,
              width: width * 0.9,
            ),
            Container(
              child: Container(
                padding:
                    EdgeInsets.only(left: 0.041 * width, right: 0.041 * width),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter store name',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                      fontSize: 18),
                ),
              ),
              height: height * 0.08,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: height * 0.55,
              width: width * 0.9,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Foreground color
                onPrimary: Colors.black.withOpacity(0.6),
                // Background color
                primary: Color.fromARGB(255, 228, 228, 228),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 0.038 * height, horizontal: width * 0.35),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Ownermenu');
              },
              child: Text(
                'NEXT',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
