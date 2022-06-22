import 'package:flutter/material.dart';
import 'package:app_dat_do/discover/component/list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 18),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 180.0,
              width: 280.0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.5),
                              shape: const CircleBorder()),
                          child: const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.savings_outlined, size: 18)),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.5),
                              shape: const CircleBorder()),
                          child: const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.savings_outlined, size: 18)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.5),
                              shape: const CircleBorder()),
                          child: const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.savings_outlined, size: 18)),
                        ),
                      ],
                    ),
                  ),
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
                    top: 42,
                    left: 10,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
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
    );
  }
}
