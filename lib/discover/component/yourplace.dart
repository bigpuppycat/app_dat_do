import 'package:flutter/material.dart';

class YourPlace extends StatelessWidget {
  var size, h, w;
  YourPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Container(
      padding: EdgeInsets.only(left: 0.044 * w),
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.location_on,
                    size: 18,
                  ),
                ),
                TextSpan(
                  text: 'Tân Mai, Hà Nội',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.005 * h),
          Text(
            'trong vòng 5km',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
    Padding(
      padding: EdgeInsets.only(right: 10.0),
      // child: ElevatedButton(
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //       fixedSize:  Size(80, 0),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       primary:  Color.fromARGB(54, 108, 108, 108),
      //       elevation: 0,
      //       shadowColor: Colors.transparent,
      //     ),
      //     child: Text('Thay đổi',
      //         style: TextStyle(
      //           fontSize: 12,
      //           fontWeight: FontWeight.w300,
      //           color: Colors.black12.withOpacity(1.0),
      //         ))),
    );
  }
}
