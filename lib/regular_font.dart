import 'package:flutter/material.dart';
// import 'package:awesome_package/awesome_package.dart';

class RegularFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default Raleway font.
      appBar: AppBar(title: Text('Package Fonts')),
      body: Center(
        // This Text Widget uses the RobotoMono font.
        child: Text(
          '1234567890Using the Raleway 很爱很爱 font from the awesome_package',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Raleway',
            // package: 'awesome_package',
          ),
        ),
      ),
    );
  }
}