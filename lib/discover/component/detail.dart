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
      body: Column(
        children: <Widget>[
          SizedBox(
            // height: 180.
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

                //title
                Positioned(
                  bottom: 24.0,
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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.shopping_bag_outlined)),
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
              color: Colors.white,
            ),
            child: Row(children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 6),
                child: Icon(
                  Icons.lightbulb_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Chỉ dẫn nhanh cho',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 4,
                  ),
                  Text('TooGood',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 6),
                child: Icon(
                  Icons.lightbulb_outlined,
                  color: Colors.white,
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
              color: Colors.white,
            ),
            child: Row(children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Chỉ dẫn nhanh cho',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 4,
                  ),
                  Text('TooGood',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
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
              color: Colors.white,
            ),
            child: Row(children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 6),
                child: Icon(
                  Icons.lightbulb_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              Text(
                "This is a Boder with One Side",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.black),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 6),
                child: Icon(
                  Icons.lightbulb_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
