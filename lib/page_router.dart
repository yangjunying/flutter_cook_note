import 'package:flutter/material.dart';

import './animate_container.dart';
import './animate_opacity.dart';
import './regular_font.dart';
import './tabtontroller_demo.dart';
import './theme_page.dart';
import './darawer_page.dart';
import './siderbar_page.dart';
import './snackbar_page.dart';
import './convex_bottom_navigation_demo.dart';
import './convexbar/convex_bar_demo.dart';

// import 'order.dart';

final List<Map<String,dynamic>> page_list = [
    {'title':'AnimatedContainer','router':'/AnimatedContainer'},
    // {'title':'Order','router':'/Order'},
    {'title':'AnimatedOpacity','router':'/AnimatedOpacity'},
    {'title':'RegularFont','router':'/RegularFont'},
    {'title':'TabControllerDemo','router':'/TabControllerDemo'},
    {'title':'ThemePage','router':'/ThemePage'},
    {'title':'DrawerPage','router':'/DrawerPage'},
    {'title':'SideBarPage','router':'/SideBarPage'},
    {'title':'SnackBarDemo','router':'/SnackBarDemo'},
    {'title':'ConvexBottomNaviBar','router':'/ConvexBottomNaviBar'},
    {'title':'ConvexBarDemp','router':'/ConvexBarDemp'},
    // {'title':'container animation','router':'AnimatedContainerApp'},
    // {'title':'container animation','router':'AnimatedContainerApp'},
  ];

final Map<String, WidgetBuilder> page_route_table = {
  page_list[0]['router'] : (content) => AnimatedContainerApp(),
  // page_list[1]['router'] : (content) => Order(),
  page_list[1]['router'] : (content) => AnimatedOpacityTest(),
  page_list[2]['router'] : (content) => RegularFont(),
  page_list[3]['router'] : (content) => TabControllerDemo(),
  page_list[4]['router'] : (content) => ThemePage(),
  page_list[5]['router'] : (content) => DrawerPage(title:'DrawerPage'),
  page_list[6]['router'] : (content) => SideBarPage(),
  page_list[7]['router'] : (content) => SnackBarDemo(),
  page_list[8]['router'] : (content) => ConvexBottomNaviBar(),
  page_list[9]['router'] : (content) => ConvexBarDemp(),
};

void navito(context, index,{args}) async {
  Navigator.of(context).pushNamed(page_list[index]['router'],arguments: {"ad":1});
}