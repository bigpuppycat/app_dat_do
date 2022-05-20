import 'package:flutter/material.dart';
import 'product_cart.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
                itemCount: products.length,
                itemBuilder: Car(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 180.0,
                          width: 280.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: Container(
                                  height: 100.0,
                                  width: 300,
                                  child: Image.asset(
                                    product.shopcover,
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
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
                                top: 70.0,
                                left: 70.0,
                                right: 10.0,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    product.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 106.0,
                                left: 10.0,
                                right: 10.0,
                                child: Text(
                                  product.type,
                                  // Optional params to try:
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 122.0,
                                left: 10.0,
                                right: 10.0,
                                child: Text(
                                  product.date,
                                  // Optional params to try:
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10.0,
                                left: 10.0,
                                right: 10.0,
                                child: Text(
                                  product.distance,
                                  // Optional params to try:
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10.0,
                                right: 10.0,
                                child: Text(
                                  product.price,
                                  // Optional params to try:
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w900,
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
                                      backgroundColor:
                                          Colors.grey[50]?.withOpacity(0.5),
                                      onPressed: () {},
                                      child: const Icon(Icons.savings_outlined),
                                    )),
                              ),
                              Positioned(
                                top: 42,
                                left: 10,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    image: DecorationImage(
                                      image: AssetImage(product.shopavatar),
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
                ))
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.