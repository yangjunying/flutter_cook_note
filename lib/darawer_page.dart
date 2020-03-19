import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  final String title;
  DrawerPage({Key key, this.title}) : super(key: key);
  // GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.fast_forward),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.shopping_basket),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: _bottomAppBar(context),
      body: Builder(
        builder: (context) {
          return Center(
            child: RaisedButton(
              onPressed: () {
                _showSnackBar(context);
              },
              child: Text('Show SnackBar'),
            ),
          );
        },
      ),
      drawer: _leftDrawer(context),
      endDrawer: _rightDrawer(context),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent[700],
        foregroundColor: Colors.redAccent[400],
        focusColor: Colors.blue[200],
        onPressed: () {
          print('Floating action button pressed');
          showMenu(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // drawerEdgeDragWidth: 0.0,
      // drawerScrimColor: Colors.redAccent[700],
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
    // Scaffold.of(context).showSnackBar(snackBar);
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Widget _leftDrawer(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the Drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header left'),
            decoration: BoxDecoration(
              color: Colors.greenAccent[700],
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _rightDrawer(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the Drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header right'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              showMenu(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _bottomAppBar(BuildContext context) {
    return Builder(builder: (context) {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 0,
        color: Colors.pinkAccent[400],
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          height: 56.0,
          child: Row(children: <Widget>[
            IconButton(
              onPressed: () {
                showMenu(context);
              },
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                print("aldksfj");
                _showSnackBar(context);
              },
              icon: Icon(Icons.add),
              color: Colors.white,
            )
          ]),
        ),
      );
    });
  }

  showMenu(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.srcIn,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: Colors.lightGreen,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 36,
                ),
                SizedBox(
                    height: (56 * 12).toDouble(),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          color: Color(0xff344955),
                        ),
                        child: Stack(
                          alignment: Alignment(0, 0),
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              top: -36,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    border: Border.all(
                                        color: Color(0xff232f34), width: 10)),
                                child: Center(
                                  child: ClipOval(
                                    child: Image.network(
                                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                                      fit: BoxFit.cover,
                                      height: 36,
                                      width: 36,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      "Inbox",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.inbox,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Starred",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Sent",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Trash",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.delete_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Spam",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Drafts",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.mail_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Inbox",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.inbox,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Starred",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Sent",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Trash",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.delete_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Spam",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Drafts",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.mail_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))),
                Container(
                  height: 56,
                  color: Color(0xff4a6572),
                )
              ],
            ),
          );
        });
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget remindButton = FlatButton(
      child: Text("Remind me later"),
      onPressed: () {
        Navigator.of(context).pop('ddd');
      },
    );
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context, 'ddd');
      },
    );
    Widget launchButton = FlatButton(
      child: Text("Launch missile"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text("Notice"),
      content: Text(
          "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      actions: [
        remindButton,
        cancelButton,
        launchButton,
      ],
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
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
