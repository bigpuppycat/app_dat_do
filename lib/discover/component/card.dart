import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
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
  const Card1({
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
    return GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(left: 14, bottom: 18.0),
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
                    height: 180.0,
                    // width: 280.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 100.0,
                            width: 300,
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
                            height: 100.0,
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
                          top: 70.0,
                          left: 70.0,
                          right: 10.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              title,
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
                            type,
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
                            date,
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
                            distance,
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
                            price,
                            // Optional params to try:
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        // Positioned(
                        //   right: 10,
                        //   top: 10,
                        //   child: SizedBox(
                        //       width: 32,
                        //       height: 32,
                        // máy quá nhanh, em ko nhận ra là anh đã ra đi như thế. anh da chet dau

                        // child: ElevatedButton.icon(
                        //   style: ElevatedButton.styleFrom(
                        //       primary: Colors.grey[50]?.withOpacity(0.5),
                        //       shape: const CircleBorder()),
                        //   onPressed: () {},
                        //   icon:  Icon(Icons.heart_broken), label: ,
                        // )),
                        // ),

                        Positioned(
                          right: 0,
                          top: 0,
                          // ai viết hi tới đây lỗi code đánh anh chiến tranh be heo co ganh qua heo gioi lam
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[50]?.withOpacity(0.3),
                                shape: const CircleBorder()),
                            child: const FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Icon(Icons.savings_outlined, size: 18)),
                          ),
                        ),
                        // heo cho anh xem hinh cai anh nao chien tranh tranh
                        Positioned(
                          top: 42,
                          left: 10,
                          child: Container(
                            width: 50,
                            height: 50,
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
        ));
  }
}

//
