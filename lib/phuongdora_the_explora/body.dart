import 'package:app_dat_do/main.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'cardlist.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (BuildContext context, int index) {
                      return cardlist(context, index);
                    }),
              ),
            ],
          ),
    );
  }
}
