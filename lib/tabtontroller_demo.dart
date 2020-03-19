import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabControllerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('presss');
              // showAlertDialog(context);
              TabController controller = DefaultTabController.of(context);
              controller.animateTo(2);
            },
            tooltip: 'Test',
            child: Icon(Icons.email),
      ),
        ),
      );
  }

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text("Remind me later"),
    onPressed:  () {
      Navigator.of(context).pop('ddd');
    },
  );
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.pop(context, 'ddd');
    },
  );
  Widget launchButton = FlatButton(
    child: Text("Launch missile"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: Text("Notice"),
    content: Text("Launching this missile will destroy the entire universe. Is this what you intended to do?"),
    actions: [
      remindButton,
      cancelButton,
      launchButton,
    ],
  );

  // show the dialog
  showDialog(
    barrierDismissible:false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
  // showCupertinoDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return alert;
  //   },
  // );

  // showCupertinoDialog(context:context,build(context))
}
}