import 'package:flutter/material.dart';

class Product {
  final String shopavatar,
      shopcover,
      title,
      title2,
      type,
      date,
      price,
      distance,
      rate;
  Product({
    required this.date,
    required this.shopcover,
    required this.shopavatar,
    required this.title,
    required this.title2,
    required this.price,
    required this.type,
    required this.distance,
    required this.rate,
  });
}

List<Product> products = [
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (1)'",
    shopavatar: "'assets/shop-image (1)'",
    title: "Bún bò nam bộ chùa láng",
    title2: "còn 2",
    price: "25.000",
    type: "đồ ăn nóng",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (2)'",
    shopavatar: "'assets/shop-image (2)'",
    title: "Bún bò nam bộ chùa láng",
    title2: "còn 2",
    price: "25.000",
    type: "đồ ăn nóng",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (3)'",
    shopavatar: "'assets/shop-image (3)'",
    title: "Bánh mì chả nóng Dũng",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (4)'",
    shopavatar: "'assets/shop-image (4)'",
    title: "Bánh Mì Tuhu Bread - Thụy Khuê",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (5)'",
    shopavatar: "'assets/shop-image (5)'",
    title: "Bành mì chả nóng Dũng",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (6)'",
    shopavatar: "'assets/shop-image (6)'",
    title: "Bành mì chả nóng Dũng",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (7)'",
    shopavatar: "'assets/shop-image (7)'",
    title: "Daebak - Thịt Nướng Hàn Quốc",
    title2: "còn 1",
    price: "25.000",
    type: "gói đồ ăn surprice",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (8)'",
    shopavatar: "'assets/shop-image (8)'",
    title: "Kem Trái Dừa & Thạch Dừa",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "11:00",
    shopcover: "'assets/shop-image (9)'",
    shopavatar: "'assets/shop-image (9)'",
    title: "Bành mì chả nóng Dũng",
    title2: "còn 2",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (10)'",
    shopavatar: "'assets/shop-image (10)'",
    title: "Cheap Corner -  Ship Đồ Ăn Đêm",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (10)'",
    shopavatar: "'assets/shop-image (10)'",
    title: "Dồi Sụn Nướng & Ăn Vặt",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (11)'",
    shopavatar: "'assets/shop-image (11)'",
    title: "Hồng Kỳ Quán -Lẩu Các Loại",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (12)'",
    shopavatar: "'assets/shop-image (12)'",
    title: "Hồng Kỳ Quán -Lẩu Các Loại",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (13)'",
    shopavatar: "'assets/shop-image (13)'",
    title: "Bún Ngan Hòe Nhai",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (14)'",
    shopavatar: "'assets/shop-image (14)'",
    title: "Bánh cuốn",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (15)'",
    shopavatar: "'assets/shop-image (15)'",
    title: "Tiger Sugar Fruit & Tea",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (16)'",
    shopavatar: "'assets/shop-image (16)'",
    title: "Tiệm Mỳ Indo Bảo Ngân",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (17)'",
    shopavatar: "'assets/shop-image (17)'",
    title: "Teen's Food",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (18)'",
    shopavatar: "'assets/shop-image (18)'",
    title: "Lẩu Gà Hầm Sâm Hàn Quốc",
    title2: "còn 1",
    price: "34.000",
    type: "đồ ăn nóng",
    distance: "1km",
    rate: "3.3",
  ),
  Product(
    date: "12:00-13:00",
    shopcover: "'assets/shop-image (19)'",
    shopavatar: "'assets/shop-image (19)'",
    title: "Bà Thìn - Xôi Chè & Bánh Trôi",
    title2: "còn 1",
    price: "15.000",
    type: "đồ ăn nguội",
    distance: "1km",
    rate: "4.3",
  ),
];

class CardExample extends StatelessWidget {
  final Product product;
  const CardExample({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
