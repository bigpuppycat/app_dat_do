import 'package:flutter/material.dart';
import 'package:app_dat_do/discover/component/list.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //heo tắt cái này đi ha
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, //ok
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 74),
            ),
            onPressed: () {},
            child: const Text('Đăng nhập bằng FACEBOOK'),
          ),
        ),
        body:  SingleChildScrollView(Column(
          children: <Widget>[
       
 Stack(
                children: <Widget>[
                  Positioned(
                    // height: 100,
                    child: Container(
                      child: Image.asset(
                        product.shopcover,
                        fit: BoxFit.fitHeight,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
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
                              child: Icon(Icons.arrow_back, size: 18)),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.5),
                              shape: const CircleBorder()),
                          child: const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.share, size: 18)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[50]?.withOpacity(0.5),
                              shape: const CircleBorder()),
                          child: const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(Icons.favorite, size: 18)),
                        ),
                      ],
                    ),
                  ),
                  //gradient đen
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
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

                  //shop title
                  Positioned(
                    bottom: 24.0,
                    left: 70.0,
                    right: 10.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            product.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //shop avatar
                  Positioned(
                    bottom: 16,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //food type
                Row(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: const Icon(Icons.shopping_bag_outlined)),
                    Container(
                      margin: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        product.type,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),

                //thêm price gốc
                Text(
                  product.price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Row(children: [
              Text(
                product.date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
              ),

              // khoảng cách
              Text(
                product.distance,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                  bottom: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),
              child: Row(children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 6),
                  child: Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.black54,
                    size: 24.0,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('79 Chùa Láng, P. Láng Thượng,  Quận Đống Đa, Hà Nội',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Thêm thông tin về cửa hàng',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 6),
                  child: Icon(
                    Icons.lightbulb_outlined,
                    color: Colors.green,
                    size: 24.0,
                  ),
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                  bottom: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),

              //Miêu tả
              child: Row(children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Nhận được gì',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exe',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal)),
                    // dòng này à .
                    //yes
                  ],
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                  bottom: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),
              child: Row(children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 6),
                  child: Icon(
                    Icons.lightbulb_outlined,
                    color: Colors.green,
                    size: 24.0,
                  ),
                ),
                Text(
                  "This is a Boder with One Side",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 6),
                  child: Icon(
                    Icons.lightbulb_outlined,
                    color: Colors.green,
                    size: 24.0,
                  ),
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                  bottom: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    "This is a Boder with One Side",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 6),
                        child: Icon(
                          Icons.lightbulb_outlined,
                          color: Colors.green,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        "This is a Boder with One Side",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    "This is a Boder with One Side",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 6),
                        child: Icon(
                          Icons.lightbulb_outlined,
                          color: Colors.green,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        "This is a Boder with One Side",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 6),
                        child: Icon(
                          Icons.lightbulb_outlined,
                          color: Colors.green,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        "This is a Boder with One Side",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 6),
                        child: Icon(
                          Icons.lightbulb_outlined,
                          color: Colors.green,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        "This is a Boder with One Side",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  const Text(
                    "This is a Boder with One Side",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
                color: Colors.green,
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    "This is a Boder with One Side",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 6),
                        child: Icon(
                          Icons.lightbulb_outlined,
                          color: Colors.green,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        "This is a Boder with One Side",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
