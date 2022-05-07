import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 208,
      // width: 280.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 180.0,
              width: 280.0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image-shop/restaurant-photo.jpeg',
                      height: 100.0,
                      width: 300,
                      fit: BoxFit.cover,
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
                  const Positioned(
                    top: 70.0,
                    left: 70.0,
                    right: 10.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lẩu Gà Hầm Sâm Hàn Quốc',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 106.0,
                    left: 10.0,
                    right: 10.0,
                    child: Text(
                      'Thức ăn nóng',
                      // Optional params to try:
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 122.0,
                    left: 10.0,
                    right: 10.0,
                    child: Text(
                      'Tới lấy 12:00- 12:30',
                      // Optional params to try:
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    right: 10.0,
                    child: Text(
                      '1km',
                      // Optional params to try:
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10.0,
                    right: 10.0,
                    child: Text(
                      '15.000d',
                      // Optional params to try:
                      style: TextStyle(
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
                          backgroundColor: Colors.grey[50]?.withOpacity(0.5),
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
                        border: Border.all(color: Colors.white, width: 1),
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/image-shop/restaurant-photo (2).jpg'),
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
