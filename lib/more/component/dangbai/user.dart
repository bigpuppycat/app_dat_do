import 'package:sizer/sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dangbai extends StatelessWidget {
  final LoaiThucPham = TextEditingController();
  final SoLuong = TextEditingController();
  final ThoiGianDenLay = TextEditingController();
  final Gia = TextEditingController();
  final GiaGiam = TextEditingController();
  Dangbai({Key? key}) : super(key: key);
  static String routeName = '/Dangbai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tài khoản',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: const Color(0xFFFCF9F2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Align(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: LoaiThucPham,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                controller: SoLuong,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                controller: ThoiGianDenLay,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                controller: Gia,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                controller: GiaGiam,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final user = ThongTinCard(
                    LoaiThucPham: LoaiThucPham.text,
                    SoLuong: SoLuong.text,
                    ThoiGianDenLay: ThoiGianDenLay.text,
                    Gia: Gia.text,
                    GiaGiam: GiaGiam.text,
                  );
                  creatThongTinCard(user);
                  updateUser();
                },
                child: Text('Create'),
              ),
              StreamBuilder<List<ThongTinCard>>(
                stream: readThongTinCards(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('khong co du lieu ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    final users = snapshot.data!;
                    return ListView(
                      children: users.map(buildThongTinCard).toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stream<List<ThongTinCard>> readThongTinCards() => FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => ThongTinCard.fromJson(doc.data()))
          .toList());

  Future creatThongTinCard(ThongTinCard user) async {
    final docThongTinCard =
        FirebaseFirestore.instance.collection('users').doc(LoaiThucPham.text);
    final json = user.toJson();
    await docThongTinCard.set(json);
  }

  Future updateUser() async {
    late int abc;
    final sodem = FirebaseFirestore.instance.collection('chucnang');

    FutureBuilder<DocumentSnapshot>(
      future: sodem.doc('chucnang').get(),
      builder: (BuildContext int, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          abc = data['dem'];
          return Text("${data['dem']}");
        }

        return Text("loading");
      },
    );
    await sodem.doc('dem').update({'thucpham': abc++});
  }
}

Widget buildThongTinCard(ThongTinCard heo) => ListTile(
    leading: Text('${heo.Gia}'),
    title: Text(heo.GiaGiam),
    subtitle: Text(heo.LoaiThucPham));

// Widget buildThongTinCard(ThongTinCard user) {
//   return Padding(
//     padding: EdgeInsets.only(bottom: 20),
//     child: Container(
//       height: 0.25.h,
//       width: 0.9.w,
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 255, 255, 255),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Color.fromARGB(255, 124, 124, 124),
//             blurRadius: 5,
//             offset: Offset(0, 1), // Shadow position
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             child: Container(
//               height: 0.125.h,
//               width: 0.9.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//                 image: DecorationImage(
//                   image: AssetImage('shopcover'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.025.w,
//             top: 0.01.h,
//             child: Container(
//               alignment: Alignment.center,
//               height: 0.03.h,
//               width: 0.13.w,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 131, 177, 149),
//                 borderRadius: BorderRadius.circular(14),
//               ),
//               child: Text(
//                 user.SoLuong,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Colors.black,
//                     fontSize: 14),
//               ),
//             ),
//           ),
//           Positioned(
//             right: 0.025.w,
//             top: 0.01.h,
//             child: Container(
//               height: 0.07.h,
//               width: 0.07.w,
//               child: Image.asset(
//                 'assets/favourite/tim.png',
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned(
//             child: Container(
//               height: 0.125.h,
//               width: 0.9.w,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 gradient: LinearGradient(
//                   begin: FractionalOffset.center,
//                   end: FractionalOffset.bottomCenter,
//                   colors: [
//                     Color.fromARGB(0, 124, 124, 124),
//                     Colors.black,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.025.w,
//             top: 0.06.h,
//             child: Container(
//               height: 0.057.h,
//               width: 0.057.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 image: DecorationImage(
//                   image: AssetImage('shopavatar'),
//                   fit: BoxFit.fill,
//                 ),
//                 border: Border.all(color: Colors.white),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.16.w,
//             top: 0.085.h,
//             child: Container(
//               height: 0.03.h,
//               child: Text(
//                 user.LoaiThucPham,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Color.fromARGB(255, 255, 255, 255),
//                     fontSize: 20),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.025.w,
//             top: 0.135.h,
//             child: Container(
//               height: 0.15.h,
//               width: 1.w,
//               child: Text(
//                 'foodytail',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 16),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.025.w,
//             top: 0.16.h,
//             child: Container(
//               height: 0.15.h,
//               width: 1.w,
//               child: Text(
//                 user.ThoiGianDenLay,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 15),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0.025.w,
//             bottom: 0.01.h,
//             child: Row(
//               children: [
//                 Container(
//                   height: 0.04.h,
//                   width: 0.04.w,
//                   child: Image.asset(
//                     'assets/favourite/sao.png',
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Container(
//                   height: 0.03.h,
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.only(left: 5),
//                   child: Text(
//                     'rate',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w900,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                         fontSize: 15),
//                   ),
//                 ),
//                 Container(
//                   height: 0.03.h,
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.only(left: 0.08.w),
//                   child: Text(
//                     'distance',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w900,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                         fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             right: 0.025.w,
//             bottom: 0.015.h,
//             child: Container(
//               height: 0.025.h,
//               child: Text(
//                 user.GiaGiam,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Color.fromARGB(255, 6, 85, 45),
//                     fontSize: 20),
//               ),
//             ),
//           ),
//           Positioned(
//             right: 0.025.w,
//             bottom: 0.036.h,
//             child: Container(
//               height: 0.025.h,
//               child: Text(
//                 user.Gia,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Color.fromARGB(255, 124, 124, 124),
//                     fontSize: 15),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

class ThongTinCard {
  final String LoaiThucPham;
  final String SoLuong;
  final String ThoiGianDenLay;
  final String Gia;
  final String GiaGiam;

  ThongTinCard({
    required this.LoaiThucPham,
    required this.SoLuong,
    required this.ThoiGianDenLay,
    required this.Gia,
    required this.GiaGiam,
  });
  Map<String, dynamic> toJson() => {
        'LoaiThucPham': LoaiThucPham,
        'SoLuong': SoLuong,
        'ThoiGianDenLay': ThoiGianDenLay,
        'Gia': Gia,
        'GiaGiam': GiaGiam,
      };
  static ThongTinCard fromJson(Map<String, dynamic> json) => ThongTinCard(
        LoaiThucPham: json['LoaiThucPham'],
        SoLuong: json['SoLuong'],
        ThoiGianDenLay: json['ThoiGianDenLay'],
        Gia: json['Gia'],
        GiaGiam: json['GiaGiam'],
      );
}
