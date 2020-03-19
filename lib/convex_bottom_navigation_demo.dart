// import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:flutter/material.dart';
// import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import './fix_convex_bottom_navbar.dart';

class ConvexBottomNaviBar extends StatefulWidget {
  @override
  _ConvexBottomNaviBarState createState() => new _ConvexBottomNaviBarState();
}

class _ConvexBottomNaviBarState extends State<ConvexBottomNaviBar> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  Widget _buildBottomNavigationBar() {
    return ConvexBottomNavigationFix(
      barShadowList: null,
      activeIconColor: Colors.black,
      inactiveIconColor: Colors.grey,
      textColor: Colors.black,
      bigIconPadding: 15.0,
      circleSize: CircleSize.SMALL,
      smallIconPadding: 10.0,
      circleColor: Colors.white,
      tabs: [
        TabData(
          icon: const Icon(Icons.home),
          title: "RED",
        ),
        TabData(
          icon: const Icon(Icons.menu),
          title: "GREEN",
        ),
        TabData(
          icon: const Icon(Icons.settings),
          title: "BLUE",
        ),
      ],
      onTabChangedListener: (position) {
        setState(() {
          _currentIndex = position;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            child: _buildBottomNavigationBar(),
          ),
        ),
      ),
    );
  }
}
