import 'package:flutter/material.dart';

class OrientationBuilderDemo extends StatelessWidget {
  final String title;
  OrientationBuilderDemo({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            // Generate 100 Widgets that display their index in the List
            children: List.generate(100, (index) {
              return Container(
                color: index % 2 == 0 ? Colors.amberAccent[100] : Colors.redAccent[100],
                child: Center(
                  widthFactor: 0.2,
                  heightFactor: 0.2,
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
