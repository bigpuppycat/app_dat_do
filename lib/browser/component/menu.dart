import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Section extends StatelessWidget {
  var size, h, w;
  Section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 0.022 * w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 0.01,
                  ),
                ],
              ),
              width: 0.109 * w,
              height: 0.051 * h,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                icon: Icon(
                  Icons.filter_list,
                  color: Colors.green,
                ), //icon data for elevated button
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.022 * w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 0.01,
                  ),
                ],
              ),
              width: 0.109 * w,
              height: 0.051 * h,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.green,
                ), //icon data for elevated button
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.022 * w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 0.01,
                  ),
                ],
              ),
              width: 0.492 * w,
              height: 0.051 * h,
              child: TextButton(
                onPressed: () {},
                child: Text(
                    "Thử: bánh mỳ & bánh kem"), //icon data for elevated button
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.022 * w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 0.01,
                  ),
                ],
              ),
              width: 0.328 * w,
              height: 0.051 * h,
              child: TextButton(
                onPressed: () {},
                child: Text("Đồ ăn đã nấu"), //icon data for elevated button
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.022 * w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 0.01,
                  ),
                ],
              ),
              width: 0.437 * w,
              height: 0.051 * h,
              child: TextButton(
                onPressed: () {},
                child: Text(
                    "Nguyên liệu tươi sống"), //icon data for elevated button
              ),
            )
          ],
        ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color.fromARGB(255, 7, 78, 31),
            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 150),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Filter',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.black26),
                  bottom: BorderSide(width: 1, color: Colors.black26),
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
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Thêm thông tin về cửa hàng',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black54))
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
// class Page2 extends StatefulWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   State<Page2> createState() => _Page2State();
// }

// class _Page2State extends State<Page2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 1,
//         toolbarHeight: 50,
//         title: const Text(
//           "GeeksForGeeks",
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               // method to show the search bar
//               showSearch(
//                   context: context,
//                   // delegate to customize the search bar
//                   delegate: CustomSearchDelegate());
//             },
//             icon: const Icon(Icons.search),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomSearchDelegate extends SearchDelegate {
// // Demo list to show querying
//   List<String> searchTerms = [
//     "Apple",
//     "Banana",
//     "Mango",
//     "Pear",
//     "Watermelons",
//     "Blueberries",
//     "Pineapples",
//     "Strawberries"
//   ];

// // first overwrite to
// // clear the search text
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: Icon(Icons.clear),
//       ),
//     ];
//   }

// // second overwrite to pop out of search menu
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: Icon(Icons.arrow_back),
//     );
//   }

// // third overwrite to show query result
//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }

// // last overwrite to show the
// // querying process at the runtime
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }
