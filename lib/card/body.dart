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
      child: Stack(
        children: <Widget>[
          Positioned(
            child: SizedBox(
              width: 0.546 * w,
              child: Image.asset(
                'assets/image-shop/shop-image (4).jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),

          Positioned(
              child: Icon(
            Icons.arrow_back,
          )),

          //gradient đen
          Positioned(
            // top: 10.a
            child: Container(
              height: 0.128,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0.027 * w,
            top: 0.013 * h,
            child: SizedBox(
                width: 0.087 * w,
                height: 0.041 * h,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey[50]?.withOpacity(0.5),
                  onPressed: () {},
                  child: Icon(Icons.arrow_back),
                )),
          ),
        ],
      ),
    );
  }
}
