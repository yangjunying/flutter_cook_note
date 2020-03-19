import 'package:flutter/material.dart';

class OtherSideBarPage extends StatelessWidget{

  final String pageText;

  OtherSideBarPage({this.pageText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(pageText),),
      body: Center(
        child: Text(pageText),
        ),
      );
  }
}