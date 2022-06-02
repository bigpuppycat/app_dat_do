import 'package:flutter/material.dart';

class TwoButton extends StatefulWidget {
  const TwoButton({Key? key}) : super(key: key);

  @override
  _TwoButtonState createState() => new _TwoButtonState();
}

class _TwoButtonState extends State<TwoButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        // used padding just for TwoButton purpose to separate from the appbar and the main content
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
              height: 40,
              // padding: EdgeInsets.all(3.5),
              width: MediaQuery.of(context).size.width * 0.85,
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
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Text("List",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17,
                                )),
                          ))),
                  Expanded(
                      child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Map",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17)),
                          ))),
                ],
              )),
        ));
  }
}
