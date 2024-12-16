import 'package:app_dat_do/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_dat_do/browser/component/list.dart';
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
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 3, //spread radius
                blurRadius: 5, // blur radius
                offset: const Offset(0, 3), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
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
            child: const Text('ĐẶT',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              SizedBox(
                child: Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    Positioned(
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
                      top: 24,
                      child: ElevatedButton(
                        //Button back
                        onPressed: () => Navigator.of(context).pop(),
                        //add quay lai trang trc
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[50]?.withOpacity(0.5),
                            shape: const CircleBorder()),
                        child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Icon(Icons.arrow_back, size: 18)),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      right: 0,
                      child: Row(
                        children: [
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
                        height: 120.0,
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
                            left: 16, //hello puppy // hi baby kiss you

                            child: Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
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
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  //Text Tên shop Tiêu đề title
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
                                child: Icon(Icons.shopping_bag_outlined,
                                    size: 22)),
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
                          const Padding(
                            padding: EdgeInsets.only(right: 6.0),
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
                      const Padding(
                        padding: EdgeInsets.only(right: 6.0),
                        child: Icon(
                          Icons.access_time_rounded,
                          size: 20,
                        ),
                      ),
                      const Text(
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
              Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                    bottom: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Row(children: [
                      const Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.black54,
                        size: 24.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                  '79 Chùa Láng, P. Láng, Quận Đống Đa, Hà Nội',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal)),
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
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Bạn nhận được gì',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Quán ăn lâu đời Bún bò nam bộ truyền thống, Quán ăn lâu đời Bún bò nam bộ truyền thống, Quán ăn lâu đời Bún bò nam bộ truyền thống',
                                maxLines: 5,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),

                              //thẻ phân loại vd: meal,
                            ],
                          ),
                        ),
                      ]),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.teal,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                    bottom: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.teal,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          "Nguyên liệu và dị ứng",
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.teal,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Mọi người đang nói gì".toUpperCase(),
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.star_rate_rounded,
                              color: Colors.orange,
                              size: 24.0,
                            ),
                          ),
                          Text(
                            //code chưa có data code
                            "3.5 / 5",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                margin: const EdgeInsets.only(
                    left: 60, right: 60, bottom: 16, top: 16),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "TOP 3 ĐIỂM DẤU ẤN",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.teal.shade700,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20.0, left: 6),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.sports_handball_rounded,
                                    color: kPrimaryColor,
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.savings_outlined,
                                    color: kPrimaryColor,
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4, bottom: 8.0),
                                  child: Icon(
                                    Icons.access_time,
                                    color: kPrimaryColor,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Thân thiện",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Món hời",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Nhận nhanh",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Điều bạn cần biết",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('\u2022'),
                        ),
                        Flexible(
                          child: Text(
                            "Cửa hàng sẽ đóng gói mọi thứ bạn cần để mang túi đồ ăn về nhà",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kBottomNavigationBarHeight),
            ],
          )),
        ));
  }
}
