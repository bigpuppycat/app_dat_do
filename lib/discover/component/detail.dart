import 'package:app_dat_do/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_dat_do/discover/component/list.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatelessWidget {
  var size, h, w;
  DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, //ok
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
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
                offset: Offset(0, 3), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
          padding: EdgeInsets.all(20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 0.044 * w, horizontal: 0.095 * h),
            ),
            onPressed: () {},
            child: Text('ĐẶT',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
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
                            shape: CircleBorder()),
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Icon(Icons.arrow_back, size: 18)),
                      ),
                    ),
                    Positioned(
                      top: 0.031 * h,
                      right: 0,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[50]?.withOpacity(0.5),
                                shape: CircleBorder()),
                            child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Icon(Icons.share, size: 18)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[50]?.withOpacity(0.5),
                                shape: CircleBorder()),
                            child: FittedBox(
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
                        height: 0.153 * h,
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
                      bottom: 0.018 * h,
                      left: 0.044 * w,
                      child: Row(
                        children: [
                          Container(
                            width: 0.175 * w,
                            height: 0.082 * h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              image: DecorationImage(
                                image: AssetImage(product.shopavatar),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                //Text Tên shop Tiêu đề title
                                product.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
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
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.shopping_bag_outlined,
                                    size: 22)),
                            Container(
                              margin: EdgeInsets.only(left: 4.0),
                              child: Text(
                                //Text Loại đồ ăn food type
                                product.type,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          //price gốc
                          product.price,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 0.01 * h, bottom: 6, top: 6),
                      child: Row(
                        children: [
                          //text đánh giá rate
                          Padding(
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
                      Padding(
                        padding: EdgeInsets.only(right: 6.0),
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
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
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
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                    bottom: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.black54,
                      size: 24.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 320,
                            child: Text(
                              '79 Chùa Láng, P. Láng, Quận Đống Đa, Hà Nội',
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 0.044 * w,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Thêm thông tin về cửa hàng',
                              style: TextStyle(
                                  fontSize: 0.018 * h,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.044 * w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 0.01 * h),
                            child: Text('Bạn nhận được gì',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 320,
                            child: Text(
                              'Quán ăn lâu đời Bún bò nam bộ truyền thống, Quán ăn lâu đời Bún bò nam bộ truyền thống, Quán ăn lâu đời Bún bò nam bộ truyền thống',
                              maxLines: 5,
                              style: TextStyle(
                                  fontSize: 0.018 * h,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),

                          //thẻ phân loại vd: meal,
                        ],
                      ),
                    ]),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.teal,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                    bottom: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 16),
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
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.teal,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Mọi người đang nói gì".toUpperCase(),
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 0.01 * h),
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
                padding: EdgeInsets.only(top: 0.044 * w),
                margin: EdgeInsets.only(
                    left: 60, right: 60, bottom: 0.044 * w, top: 0.044 * w),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "TOP 3 ĐIỂM DẤU ẤN",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.teal.shade700,
                            fontSize: 0.044 * w,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                right: 0.055 * w, left: 0.016 * w),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0.01 * h),
                                  child: Icon(
                                    Icons.sports_handball_rounded,
                                    color: kPrimaryColor,
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 0.01 * h),
                                  child: Icon(
                                    Icons.savings_outlined,
                                    color: kPrimaryColor,
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 0.005 * h, bottom: 0.01 * h),
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
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: 0.01 * h),
                                child: Text(
                                  "Thân thiện",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: 0.01 * h),
                                child: Text(
                                  "Món hời",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: 0.01 * h),
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
                margin: EdgeInsets.symmetric(
                    vertical: 0.044 * w, horizontal: 0.044 * w),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black26),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Điều bạn cần biết",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.044 * w),
                          child: Text('\u2022'),
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            "Cửa hàng sẽ đóng gói mọi thứ bạn cần để mang túi đồ ăn về nhà",
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: kBottomNavigationBarHeight),
            ],
          )),
        ));
  }
}
