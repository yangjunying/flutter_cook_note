import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Demo'),
      ),
      body: Builder(
        builder: (context) {
          return SnackBarPage();
        },
      ),
      bottomNavigationBar: _bottomAppBar(context),
      floatingActionButton: FloatingActionButton(
        shape: new BeveledRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.yellowAccent[700],
        foregroundColor: Colors.redAccent[400],
        focusColor: Colors.blue[200],
        onPressed: () {
          print('Floating action button pressed');
          _showSnackBar(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Widget _bottomAppBar(BuildContext context) {
    return Builder(builder: (context) {
      return BottomAppBar(
        notchMargin: 6,
        // shape: CircularNotchedRectangle(),
        // shape: widget.notchedShape
        elevation: 0,
        color: Colors.pinkAccent[400],
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          height: 56.0,
          child: Row(children: <Widget>[
            IconButton(
              onPressed: () {
                // showMenu(context);
              },
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change!
                    },
                  ),
                );
                // Find the Scaffold in the Widget tree and use it to show a SnackBar!
                Scaffold.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.add),
              color: Colors.white,
            )
          ]),
        ),
      );
    });
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change!
              },
            ),
          );
          // Find the Scaffold in the Widget tree and use it to show a SnackBar!
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}

/*
Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(title: const Text('Tasks - Bottom App Bar')),
    floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      icon: const Icon(Icons.add),
      label: const Text('Add a task'),
      onPressed: () {},
    ),
    floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
*/