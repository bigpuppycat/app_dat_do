import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  var size, h, w;
  final String shopavatar,
      shopcover,
      title,
      title2,
      type,
      date,
      distance,
      rate,
      price;

  final VoidCallback press;
  Card1({
    Key? key,
    required this.date,
    required this.shopcover,
    required this.shopavatar,
    required this.title,
    required this.title2,
    required this.price,
    required this.type,
    required this.distance,
    required this.rate,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: 0.038, bottom: 0.023 * h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Card(
            shadowColor: Colors.black54,
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 0.23 * h,
                  width: 0.765 * w,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          height: 0.128 * h,
                          width: 0.82 * w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(shopcover),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      // gradient gradient
                      Positioned(
                        child: Container(
                          height: 0.128 * h,
                          decoration: BoxDecoration(
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
                        top: 0.089 * h,
                        left: 0.191 * w,
                        right: 0.027 * w,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.135 * h,
                        left: 0.027 * w,
                        right: 0.027 * w,
                        child: Text(
                          type,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.156 * h,
                        left: 0.027 * w,
                        right: 0.027 * w,
                        child: Text(
                          date,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.013 * h,
                        left: 0.027 * w,
                        right: 0.027 * w,
                        child: Text(
                          distance,
                          // Optional params to try:
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.013 * h,
                        right: 0.027 * w,
                        child: Text(
                          price,
                          // Optional params to try:
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),

                      Positioned(
                        right: 0,
                        top: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.3),
                              shape: CircleBorder()),
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.savings_outlined, size: 18)),
                        ),
                      ),

                      Positioned(
                        top: 0.054 * h,
                        left: 0.027 * w,
                        child: Container(
                          width: 0.137 * w,
                          height: 0.064 * h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            image: DecorationImage(
                              image: AssetImage(shopavatar),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
