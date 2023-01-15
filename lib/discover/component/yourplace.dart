import 'package:flutter/material.dart';

class YourPlace extends StatelessWidget {
  const YourPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          RichText(
            text: const TextSpan(
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
          const SizedBox(height: 4),
          const Text(
            'trong vòng 5km',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
    Padding(
      padding: const EdgeInsets.only(right: 10.0),
      // child: ElevatedButton(
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //       fixedSize: const Size(80, 0),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       primary: const Color.fromARGB(54, 108, 108, 108),
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
