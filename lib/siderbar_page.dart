import 'package:flutter/material.dart';

import './other_sidebar_page.dart';

class SideBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SideBarPageState();
  }
}

class _SideBarPageState extends State<SideBarPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('SideBarDemp'),backgroundColor: Colors.redAccent[400],),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Johon Hutter'), 
              accountEmail: Text('jon@a.com'),
              currentAccountPicture: new GestureDetector(
                onDoubleTap: (){
                  print("tap avartar");
                },
                child: new CircleAvatar(
                  backgroundImage:NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                  ),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onDoubleTap: (){
                    print("tap avartar");
                  },
                  child: new CircleAvatar(
                    backgroundImage:NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                    ),
                  ),
                ),
                new GestureDetector(
                  onDoubleTap: (){
                    print("tap avartar");
                  },
                  child: new CircleAvatar(
                    backgroundImage:NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                    ),
                  ),
                ),
                new GestureDetector(
                  onDoubleTap: (){
                    print("tap avartar");
                  },
                  child: new CircleAvatar(
                    backgroundImage:NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                    ),
                  ),
                ),
                
              ],
              decoration: BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584539310036&di=fd449be3d243679b48b1d2b17ee65390&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01bc1c5694b3e932f87574bef9bc29.png",
                  ),
                ),
              ),
            ),
            new ListTile(
              leading: Icon(Icons.shop_two,color: Colors.pinkAccent[400],),
              trailing: Icon(Icons.arrow_upward),
              title: Text('First page'),
              onTap: (){ 
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new OtherSideBarPage(pageText:'First page'),),);
              },
            ),
            new ListTile(
              leading: Icon(Icons.shop_two,color: Colors.pinkAccent[400],),
              trailing: Icon(Icons.arrow_right),
              title: Text('Second Page'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new OtherSideBarPage(pageText:'Second page'),),);
              },
            ),
            Divider(color: Colors.greenAccent[700],),
            new ListTile(
              leading: Icon(Icons.shop_two,color: Colors.pinkAccent[400],),
              trailing: Icon(Icons.cancel),
              title: Text('Close'),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Sidebar page',style: TextStyle(fontSize: 35.0),),
        ),
    );
  }
}