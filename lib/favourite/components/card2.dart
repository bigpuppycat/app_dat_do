// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card2 extends StatelessWidget {
  var size, height, width;
  final String conlai,
      shopavatar,
      shopcover,
      shopname,
      foodytail,
      date,
      rate,
      distance,
      preprice,
      price;

  Card2({
    required this.conlai,
    required this.shopavatar,
    required this.shopcover,
    required this.shopname,
    required this.foodytail,
    required this.date,
    required this.rate,
    required this.distance,
    required this.preprice,
    required this.price,
  });
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        height: height * 0.25,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 124, 124, 124),
              blurRadius: 5,
              offset: Offset(0, 1), // Shadow position
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: height * 0.125,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(shopcover),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: width * 0.025,
              top: height * 0.01,
              child: Container(
                alignment: Alignment.center,
                height: height * 0.03,
                width: width * 0.13,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 131, 177, 149),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  conlai,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 14),
                ),
              ),
            ),
            Positioned(
              right: width * 0.025,
              top: height * 0.01,
              child: Container(
                height: width * 0.07,
                width: width * 0.07,
                child: Image.asset(
                  'assets/favourite/tim.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: height * 0.125,
                width: width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.center,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 124, 124, 124),
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: width * 0.025,
              top: height * 0.06,
              child: Container(
                height: height * 0.057,
                width: height * 0.057,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(shopavatar),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: width * 0.16,
              top: height * 0.085,
              child: Container(
                height: height * 0.03,
                child: Text(
                  shopname,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20),
                ),
              ),
            ),
            Positioned(
              left: width * 0.025,
              top: height * 0.135,
              child: Container(
                height: height * 0.15,
                width: width,
                child: Text(
                  foodytail,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16),
                ),
              ),
            ),
            Positioned(
              left: width * 0.025,
              top: height * 0.16,
              child: Container(
                height: height * 0.15,
                width: width,
                child: Text(
                  date,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15),
                ),
              ),
            ),
            Positioned(
              left: width * 0.025,
              bottom: height * 0.01,
              child: Row(
                children: [
                  Container(
                    height: width * 0.04,
                    width: width * 0.04,
                    child: Image.asset(
                      'assets/favourite/sao.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: height * 0.03,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      rate,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    height: height * 0.03,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: width * 0.08),
                    child: Text(
                      distance,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: width * 0.025,
              bottom: height * 0.015,
              child: Container(
                height: height * 0.025,
                child: Text(
                  price,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 6, 85, 45),
                      fontSize: 20),
                ),
              ),
            ),
            Positioned(
              right: width * 0.025,
              bottom: height * 0.036,
              child: Container(
                height: height * 0.025,
                child: Text(
                  preprice,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 124, 124, 124),
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
