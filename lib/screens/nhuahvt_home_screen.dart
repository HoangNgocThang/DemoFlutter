import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NhuahvtHomeScreen extends StatefulWidget {
  const NhuahvtHomeScreen({super.key});

  @override
  State<NhuahvtHomeScreen> createState() => _NhuahvtHomeScreenState();
}

class _NhuahvtHomeScreenState extends State<NhuahvtHomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildBottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            size: 20,
            Icons.home,
            color: Color(0xffD2D2D2),
          ),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            size: 20,
            Icons.business,
            color: Color(0xffD2D2D2),
          ),
          label: 'Đặt hàng',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            size: 20,
            Icons.school,
            color: Color(0xffD2D2D2),
          ),
          label: 'Tích điểm',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            size: 20,
            Icons.school,
            color: Color(0xffD2D2D2),
          ),
          label: 'Thông báo',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            size: 20,
            Icons.perm_identity,
            color: Color(0xffD2D2D2),
          ),
          label: 'Tài khoản',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    );
  }

  Widget buildBottomBarItem(
      String title, IconData icon, bool isSelected, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                size: 20,
                icon,
                color: isSelected ? Colors.red : const Color(0xffD2D2D2),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(color: Color(0xff999999), fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomBar2() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(20),
            // topRight: Radius.circular(20),
            ),
      ),
      child: Row(children: [
        buildBottomBarItem(
            'Trang chủ', Icons.home, _selectedIndex == 0 ? true : false, 0),
        buildBottomBarItem("Đặt hàng", Icons.card_travel,
            _selectedIndex == 1 ? true : false, 1),
        buildBottomBarItem(
            "Tích điểm", Icons.home, _selectedIndex == 2 ? true : false, 2),
        buildBottomBarItem("Thông báo", Icons.notification_add,
            _selectedIndex == 3 ? true : false, 3),
        buildBottomBarItem("Tài khoản", Icons.perm_identity,
            _selectedIndex == 4 ? true : false, 4),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomBar2(),
      body: SafeArea(
          child: ListView(
        children: [
          Text('1'),
          Text('1'),
          Text('1'),
        ],
      )),
    );
  }
}
