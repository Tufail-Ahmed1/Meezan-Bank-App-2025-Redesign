import 'package:banking_app/view/activity_screen.dart';
import 'package:banking_app/view/my_card_screen.dart';
import 'package:banking_app/view/profile_screen.dart';
import 'package:banking_app/view/qrScanner_screen.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../view/home_screen.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _page = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    MyCardScreen(),
    QrscannerScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        height: 60,
        color: Colors.purple.shade600,
        key: _bottomNavigationKey,
        items: const <Widget>[
          BottomNavBar(
            text: 'Home',
            icon: Icon(Icons.home, color: Colors.white),
          ),
          BottomNavBar(
            text: 'My Card',
            icon: Icon(Icons.credit_card, color: Colors.white),
          ),
          BottomNavBar(
            text: 'QR',
            icon: Icon(Icons.qr_code_scanner_sharp,size: 25, color: Colors.white),
          ),
          BottomNavBar(
            text: 'Activity',
            icon: Icon(Icons.analytics_outlined, color: Colors.white),
          ),
          BottomNavBar(
            text: 'Profile',
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.icon, required this.text});
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(text, style: appStyle(14, Colors.white, FontWeight.w500)),
      ],
    );
  }
}
