import 'package:flutter/material.dart';

class TwoButton extends StatefulWidget {
  TwoButton({Key? key}) : super(key: key);

  @override
  _TwoButtonState createState() => _TwoButtonState();
}

class _TwoButtonState extends State<TwoButton> {
  var size, h, w;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Padding(
        // used padding just for TwoButton purpose to separate from the appbar and the main content
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
              height: 0.058 * h,
              // padding: EdgeInsets.all(3.5),
              width: w * 0.9,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 77, 77),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Text("List",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                          ))),
                  Expanded(
                      child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Map",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                          ))),
                ],
              )),
        ));
  }
}
