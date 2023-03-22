import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/screens/nhuahvt_cart_screen.dart';
import 'package:my_app/screens/nhuahvt_home_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  Widget buildBottomBarItem(
      String title, IconData icon, bool isSelected, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (_selectedIndex == index) {
            return;
          }
          setState(() {
            _selectedIndex = index;
          });

          print('index${index}');
          if (index == 0) {
            // Navigator.pushNamed(context, '/nhuahvt-home');
            // Navigator.pushReplacementNamed(context, '/nhuahvt-home');
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    NhuahvtHomeScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          } else if (index == 1) {
            // Navigator.pushNamed(context, '/nhuahvt-cart');
            // Navigator.pushReplacementNamed(context, '/nhuahvt-cart');
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    NhuahvtCartScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          }
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

  @override
  Widget build(BuildContext context) {
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
}

// Widget buildBottomBar() {
//   return BottomNavigationBar(
//     items: const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         icon: Icon(
//           size: 20,
//           Icons.home,
//           color: Color(0xffD2D2D2),
//         ),
//         label: 'Trang chủ',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           size: 20,
//           Icons.business,
//           color: Color(0xffD2D2D2),
//         ),
//         label: 'Đặt hàng',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           size: 20,
//           Icons.school,
//           color: Color(0xffD2D2D2),
//         ),
//         label: 'Tích điểm',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           size: 20,
//           Icons.school,
//           color: Color(0xffD2D2D2),
//         ),
//         label: 'Thông báo',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           size: 20,
//           Icons.perm_identity,
//           color: Color(0xffD2D2D2),
//         ),
//         label: 'Tài khoản',
//       ),
//     ],
//     currentIndex: _selectedIndex,
//     selectedItemColor: Colors.amber[800],
//     onTap: _onItemTapped,
//     backgroundColor: Colors.white,
//     type: BottomNavigationBarType.fixed,
//   );
// }
