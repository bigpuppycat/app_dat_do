import 'package:flutter/material.dart';
import 'component/body.dart';

class Mystore extends StatefulWidget {
  static String routeName = '/Mystore';
  @override
  _MystoreState createState() => _MystoreState();
}

int selectedIndex = 0;

class _MystoreState extends State<Mystore> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 5,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black54,
              ),
            ),
          ]),
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 52, 3, 3),
        width: 270,
        child: Container(
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/shop-image (1).jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 55,
                        left: 5,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/shop-image (1).jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text(
                              'Shop cua tui',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _createDrawerItem(
                icon: Icons.timer,
                text: 'Bắt đầu',
                isSelected: selectedIndex == 0,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 0;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.history,
                text: 'bảng điều khiển',
                isSelected: selectedIndex == 1,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 1;
                    },
                  );
                },
              ),
              _createDrawerItem(
                  icon: Icons.calendar_today,
                  text: 'lịch',
                  isSelected: selectedIndex == 2,
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      selectedIndex = 2;
                    });
                  }),
              _createDrawerItem(
                icon: Icons.schedule,
                text: 'kế hoạch',
                isSelected: selectedIndex == 3,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 3;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.settings,
                text: 'cài đặt',
                isSelected: selectedIndex == 4,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 4;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.moving,
                text: 'hiệu suất',
                isSelected: selectedIndex == 5,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 5;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.rate_review,
                text: 'thanh toán',
                isSelected: selectedIndex == 6,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 6;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.rate_review,
                text: 'hỗ trợ',
                isSelected: selectedIndex == 7,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 7;
                    },
                  );
                },
              ),
              _createDrawerItem(
                icon: Icons.logout,
                text: 'đăng xuất',
                isSelected: selectedIndex == 8,
                onTap: () {
                  Navigator.pop(context);
                  setState(
                    () {
                      selectedIndex = 8;
                    },
                  );
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _createDrawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap,
    required bool isSelected}) {
  return Ink(
    color: isSelected ? Color(0xffE3EAFF) : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.white,
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}

class Page0 extends StatelessWidget {
  Page0({Key? key}) : super(key: key);
  static String routeName = '/Page0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mystore(),
        appBar: AppBar(
          title: Text("page 0"),
        ),
        body: Text("page 0"));
    ;
  }
}
