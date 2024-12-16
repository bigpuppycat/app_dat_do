import 'package:flutter/material.dart';

class TwoButton extends StatefulWidget {
  const TwoButton({Key? key}) : super(key: key);

  @override
  _TwoButtonState createState() => _TwoButtonState();
}

class _TwoButtonState extends State<TwoButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        // used padding just for TwoButton purpose to separate from the appbar and the main content
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
              height: 45,
              // padding: EdgeInsets.all(3.5),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
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
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: const Text("List",
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
                            child: const Text("Map",
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
