import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dangbai extends StatelessWidget {
  var size, h, w;
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  final LoaiThucPham = TextEditingController();
  final SoLuong = TextEditingController();
  final ThoiGianDenLay = TextEditingController();
  final Gia = TextEditingController();
  final GiaGiam = TextEditingController();

  Dangbai({Key? key}) : super(key: key);
  static String routeName = '/Dangbai';
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tài khoản',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 40,
        backgroundColor: Color(0xFFFCF9F2),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
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
                },
                child: Text('Create'),
              ),
              // if (pickedFile != null)
              //   Expanded(
              //     child: Container(
              //       color: Colors.blue[100],
              //       child: Image.file(
              //         File(pickedFile!.path!),
              //         width: double.infinity,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              SizedBox(
                height: 32,
              ),
              // ElevatedButton(
              //   onPressed: selectFile,
              //   child: Text('Select File'),
              // ),
              // ElevatedButton(
              //   onPressed: uploadFile,
              //   child: Text('Upload File'),
              // ),
              StreamBuilder<List<ThongTinCard>>(
                stream: readThongTinCards(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('khong co du lieu ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    final users = snapshot.data!;
                    return ListView(
                      shrinkWrap: true,
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

  // Future selectFile() async {
  //   final result = await FilePicker.platform.pickFiles();
  //   if (result == null) return;

  //   setState(() {
  //     pickedFile = result.files.first;
  //   });
  // }

  // Future uploadFile() async {
  //   final pathInFirestore = 'files/${pickedFile?.name}';
  //   File file = File(pickedFile!.path!);

  //   final ref = FirebaseStorage.instance.ref().child(pathInFirestore);
  //   ref.putFile(file);
  // }

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

  void setState(Null Function() param0) {}
}

Widget buildThongTinCard(ThongTinCard user) => ListTile(
    leading: Text(user.Gia),
    title: Text(user.GiaGiam),
    subtitle: Text(user.LoaiThucPham));

// Widget buildThongTinCard(ThongTinCard user) {
//   return Padding(
//     padding: EdgeInsets.only(bottom: 20),
//     child: Container(
//       height: 200,
//       width: 300,
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
//               height: 100,
//               width: 300,
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
//             left: 10,
//             top: 10,
//             child: Container(
//               alignment: Alignment.center,
//               height: 20,
//               width: 20,
//               decoration: BoxDecoration(
//                 color:  Color.fromARGB(255, 131, 177, 149),
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
//             right: 020,
//             top: 20,
//             child: Container(
//               height: 10,
//               width: 10,
//               child: Image.asset(
//                 'assets/favourite/tim.png',
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned(
//             child: Container(
//               height: 100,
//               width: 300,
//               decoration:  BoxDecoration(
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
//             left: 20,
//             top: 20,
//             child: Container(
//               height: 20,
//               width: 20,
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
//             left: 20,
//             top: 20,
//             child: Container(
//               height: 10,
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
//             left: 20,
//             top: 20,
//             child: Container(
//               height: 10,
//               width: 10,
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
//             left: 20,
//             top: 20,
//             child: Container(
//               height: 20,
//               width: 20,
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
//             left: 20,
//             bottom: 20,
//             child: Row(
//               children: [
//                 Container(
//                   height: 10,
//                   width: 10,
//                   child: Image.asset(
//                     'assets/favourite/sao.png',
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Container(
//                   height: 10,
//                   alignment: Alignment.center,
//                   padding:  EdgeInsets.only(left: 5),
//                   child: Text(
//                     'rate',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w900,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                         fontSize: 15),
//                   ),
//                 ),
//                 Container(
//                   height: 10,
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.only(left: 010),
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
//             right: 20,
//             bottom: 20,
//             child: Container(
//               height: 20,
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
//             right: 20,
//             bottom: 20,
//             child: Container(
//               height: 20,
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
