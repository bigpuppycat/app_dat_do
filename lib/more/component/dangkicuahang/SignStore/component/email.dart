import 'package:flutter/material.dart';

class email extends StatelessWidget {
  email({Key? key}) : super(key: key);
  static String routeName = '/email';
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
              height: 16,
            ),
            Container(
              height: height * 0.025,
              width: width * 0.9,
              child: const Text(
                'Great! Do we have the right email address for you?',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              child: const Text(
                'The email address below is currently connected to your Too Good To Go account. Please either confirm you would like to use this email to log ionto otyubjasdbnjksadb k,asdbjk',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
              width: width * 0.9,
            ),
            Container(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
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
                    vertical: 30, horizontal: width * 0.35),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Sodienthoai');
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
