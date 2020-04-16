import 'package:flutter/material.dart';

import './routes/page_router.dart';

class IndexPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: page_list.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context,index){
        return _list_item(context,index, page_list[index]['title'], page_list[index]['router']);
      },
      );
  }

  Widget _list_item(BuildContext context, int index,String title,String routername){
    // return GestureDetector(behavior: ,)
    return GestureDetector(
      // borderRadius: BorderRadius.circular(10),
      // autofocus: true,
      onTap: (){
        print("index ${index}");
        // Navigator.of(context).pushNamed('/AnimatedContainer',arguments: {"ad":1});
        navito(context, index);          // Navigator.of(context).pushNamed(page_list[index]['router'],arguments: {'args':'args'});
      },
      child: Container(
        height: 80,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(bottom: 5.0),
        decoration: BoxDecoration(
        // backgroundBlendMode: BlendMode.color,
        color: Colors.yellow,
        border: Border(bottom: BorderSide(width: 1,color: Colors.greenAccent[400],),),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.pink,fontSize: 26),),
      ),
    );
  }
}
