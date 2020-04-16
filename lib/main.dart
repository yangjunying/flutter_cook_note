import 'package:flutter/material.dart';

import './index_page.dart';
import './routes/page_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
        focusColor: Colors.greenAccent,
      ),
      home: MyHomePage(),
      // routes: page_route_table,
      onGenerateRoute: onGenerateRoute,
    );
  }

  // 动态生成路由
final onGenerateRoute = (RouteSettings settings) {
  // 从路由表得到builder
  final name = settings.name;
  var builder = page_route_table[name];

  // 如果路由表中未定义，跳转到未定义路由页面
  if (builder == null) {
    // builder = (content) => NotFoundPage();
    return null;
  }

  // 构建动态的route
  final route = MaterialPageRoute(
    builder: builder,
    settings: settings,
  );

  return route;
};
}

class MyHomePage extends StatelessWidget {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Cook book Demo'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: IndexPage()
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
