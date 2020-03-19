import 'package:flutter/material.dart';

class Order extends StatefulWidget{

  @override
  _State createState() => _State();
}

class _State extends State<Order> with RouteAware{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _setSize(String value){
    setState(() {
      // _pizzaOrder.size = value; 
      // _pizzaOrders[value].size = value;
      // _pizzaOrders.elementAt(index).size = value;
      // _pizzaOrder.size = value;
    });
  }

  void _setTopping(int index, bool value){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //获得上级页面传递的参数
    final arguments = ModalRoute.of(context).settings.arguments;
    print(arguments);
    return new Scaffold(
      appBar: new AppBar(title:  new Text('Order Pizza'),),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              Text('awkfd'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didPop() {
    // TODO: implement didPop
    print("didPop");
    super.didPop();
  }
  @override
  void didPush() {
    // TODO: implement didPush
    print("didPush");
    super.didPush();
  }
  @override
  void didPopNext() {
    // TODO: implement didPopNext
    print("didPopNext");
    super.didPopNext();
  }
  @override
  void didPushNext() {
    // TODO: implement didPushNext
    print("didPushNext");
    super.didPushNext();
  }

  @override
  void didUpdateWidget(Order oldWidget) {
    // TODO: implement didUpdateWidget
    print("ORDER didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("ORDER didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    print('ORDER reassemble');
    super.reassemble();
  }
  
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('ORDER deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("ORDER dispose");
    super.dispose();
  }
}