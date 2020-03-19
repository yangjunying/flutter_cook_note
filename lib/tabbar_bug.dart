import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FixTabBarView extends StatefulWidget {
  const FixTabBarView({
    Key key,
    @required this.children,
    @required this.tabController,
    @required this.pageController,
    this.physics,
    this.dragStartBehavior = DragStartBehavior.start,
  })  : assert(children != null),
        assert(dragStartBehavior != null),
        super(key: key);

  final TabController tabController;
  final PageController pageController;
  final List<Widget> children;
  final ScrollPhysics physics;
  final DragStartBehavior dragStartBehavior;

  @override
  _FixTabBarViewState createState() => _FixTabBarViewState();
}

class _FixTabBarViewState extends State<FixTabBarView> {
  @override
  void dispose() {
    super.dispose();
    widget.tabController.dispose();
    widget.pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      dragStartBehavior: widget.dragStartBehavior,
      physics: widget.physics,
      controller: widget.pageController,
      children: widget.children,
      onPageChanged: (index) {
        widget.tabController.animateTo(index);
      },
    );
  }
}

/*
import 'package:campsite_flutter/widget/fix_tabbar_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FixTabBarView"),
        ),
        body: Test(),
      ),
    ),
  );
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  PageController _pageController;
  TabController _tabController;
  List<String> _tabList = ["A", "B", "C"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          labelColor: Colors.blue,
          controller: _tabController,
          tabs: _tabList.map((text) {
            return Tab(
              text: text,
            );
          }).toList(),
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
        ),
        Expanded(
          child: FixTabBarView(
            pageController: _pageController,
            tabController: _tabController,
            children: _tabList.map((text) {
              return Page(tab: text);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class Page extends StatefulWidget {
  final String tab;

  Page({Key key, this.tab}) : super(key: key);

  @override
  _PageState createState() => _PageState(tab: tab);
}

class _PageState extends State<Page> with AutomaticKeepAliveClientMixin {
  String tab;
  _PageState({@required this.tab});

  int _count = 0;

  void add() {
    setState(() {
      ++_count;
    });
  }

  @override
  void didUpdateWidget(Page oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    print("initState $tab $hashCode count=$_count");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("build $tab $hashCode count=$_count");
    return Scaffold(
      body: Center(
        child: Text("$tab $_count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
*/