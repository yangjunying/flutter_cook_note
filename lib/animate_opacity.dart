import 'package:flutter/material.dart';

// The StatefulWidget's job is to take in some data and create a State class.
// In this case, the Widget takes a title, and creates a _MyHomePageState.
class AnimatedOpacityTest extends StatefulWidget {
  final String title;
  AnimatedOpacityTest({Key key, this.title}) : super(key: key);
  @override
  _AnimatedOpacityTestState createState() => _AnimatedOpacityTestState();
}
// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _AnimatedOpacityTestState extends State<AnimatedOpacityTest> {
  // Whether the green box should be visible or invisible
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacityTest'),
      ),
      body: Center(
        child: AnimatedOpacity(
          // If the Widget should be visible, animate to 1.0 (fully visible).
          // If the Widget should be hidden, animate to 0.0 (invisible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box needs to be the child of the AnimatedOpacity
          child: AbsorbPointer(
            absorbing:_visible == true ? false : true,
            child:GestureDetector(
            behavior: HitTestBehavior.opaque,
            // onTap: _visible ? (){
            //   print("Tap On Me");
            // } : null,
            onTap: (){
              print("Tap On Me");
            },
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
          ),)
          ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Make sure to call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}