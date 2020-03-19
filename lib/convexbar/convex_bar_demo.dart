import './custom_appbar_sample.dart';
import 'package:flutter/material.dart';

import 'default_appbar_demo.dart';

class ConvexBarDemp extends StatefulWidget {
  @override
  _ConvexBarDempState createState() => _ConvexBarDempState();
}

class _ConvexBarDempState extends State<ConvexBarDemp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => DefaultAppBarDemo(),
        "/custom": (BuildContext context) => CustomAppBarDemo(),
      },
    );
  }
}
