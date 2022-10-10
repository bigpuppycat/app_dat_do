import 'package:flutter/material.dart';
import 'package:app_dat_do/phone/login_screen.dart';

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
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
        'LoaiThucPham': LoaiThucPham,
        'SoLuong': SoLuong,
        'ThoiGianDenLay': ThoiGianDenLay,
        'Gia': Gia,
        'GiaGiam': GiaGiam,
      };
}
