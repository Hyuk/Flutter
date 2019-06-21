import 'package:flutter/material.dart';
import './tabs/first.dart';
import './tabs/second.dart';
import './tabs/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Using Tabs",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icons.adb),
        ),
        Tab(
          icon: Icon(Icons.airport_shuttle),
        ),
      ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Using Tabs"),
            backgroundColor: Colors.redAccent,
            bottom: getTabBar()),
        body: getTabBarView(<Widget>[First(), Second(), Third()]));
  }
}
