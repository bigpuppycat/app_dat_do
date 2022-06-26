import 'package:flutter/material.dart';
import 'package:app_dat_do/discover/component/list.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              // height: 180,
              // width: 280.0,
              child: Stack(
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

                  //shop avatar
                  Positioned(
                    bottom: 14,
                    left: 16,
                    child: Row(
                      children: [
                        Positioned(
                          bottom: 14,
                          left: 16,
                          child: Container(
                            width: 68,
                            height: 68,
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
                        Positioned(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                //Text Tiêu đề title
                                product.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  Icon(Icons.shopping_bag_outlined, size: 22)),
                          Container(
                            margin: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              //Text Loại đồ ăn food type
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
                      Text(
                        //price gốc
                        product.price,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, bottom: 6, top: 6),
                    child: Row(
                      children: [
                        //text đánh giá rate
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Icon(
                            Icons.star_border,
                            color: Colors.orange,
                            size: 20,
                          ),
                        ),
                        Text(
                          product.rate,
                          //add date lượt đánh giá vd: (10)
                        )
                      ],
                    ),
                  ),

                  // pickup time
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Icon(
                        Icons.access_time_rounded,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Pick up:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.date,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black87),
                    bottom: BorderSide(width: 0.5, color: Colors.black87),
                  ),
                ),
                child: Flexible(
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.black54,
                      size: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('79 Chùa Láng, P. Láng ',
                              //,
                              //  Quận Đống Đa, Hà Nội

                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Thêm thông tin về cửa hàng',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: Colors.green.shade900),
                  bottom: BorderSide(width: 0.5, color: Colors.green.shade900),
                ),
              ),

              //Miêu tả
              child: Flexible(
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
                        'Lorem ipsum dolor sit amet, consectetur adip',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),

                      // dòng này à .
                      //yes
                    ],
                  ),
                ]),
              ),
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
        )));
  }
}
