import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: SizedBox(
              width: 200,
              child: Image.asset(
                'assets/image-shop/shop-image (4).jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),

          const Positioned(
              child: Icon(
            Icons.arrow_back,
          )),

          //gradient đen
          Positioned(
            // top: 10,a
            child: Container(
              height: 100.0,
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
            right: 10,
            top: 10,
            child: SizedBox(
                width: 32,
                height: 32,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey[50]?.withOpacity(0.5),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back),
                )),
          ),
        ],
      ),
    );
  }
}
