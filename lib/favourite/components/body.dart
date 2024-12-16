import 'package:flutter/material.dart';

import '../../discover/discover.dart';

class Body extends StatelessWidget {
  var size, height, width;
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        SizedBox(
          height: height * 0.11,
          width: width,
        ),
        Container(
          height: height * 0.13,
          width: width * 0.30,
          child: Image.asset(
            'assets/favourite/tomato.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: height * 0.03,
          width: width,
        ),
        Container(
          height: height * 0.03,
          width: width,
          alignment: Alignment.center,
          child: Text(
            'No favorites added yet',
            style: const TextStyle(
                fontWeight: FontWeight.w900, color: Colors.black, fontSize: 20),
          ),
        ),
        SizedBox(
          height: height * 0.01,
          width: width,
        ),
        Container(
          height: height * 0.02,
          width: width,
          alignment: Alignment.center,
          child: Text(
            'Tap the heart icon on a store to add it to your',
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Container(
          height: height * 0.03,
          width: width,
          alignment: Alignment.center,
          child: Text(
            'favorites and it will show up here.',
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        SizedBox(
          height: height * 0.01,
          width: width,
        ),
        Container(
          height: height * 0.29,
          width: width * 0.70,
          child: Image.asset(
            'assets/favourite/khung.jpg',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: height * 0.07,
          width: width,
        ),
        Container(
          height: height * 0.06,
          width: width * 0.50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
                    width: 3.0, color: Color.fromARGB(255, 6, 85, 45)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
            onPressed: () {
              Navigator.pushNamed(context, Discover.routeName);
            },
            child: const Text(
              'FIND A STORE',
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 6, 85, 45),
                fontSize: 17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
