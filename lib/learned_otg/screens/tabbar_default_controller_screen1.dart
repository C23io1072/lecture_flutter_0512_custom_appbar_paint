import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDefaultTabControllerScreen1 extends StatefulWidget {
  const MyDefaultTabControllerScreen1({super.key});

  @override
  State<MyDefaultTabControllerScreen1> createState() => _MainPageState();
}

final screens = [
  Container(color: Colors.red),
  Container(color: Colors.green),
];

/////!!!!! here added:  with TickerProviderStateMixin  !!!!!!!!!!!!!!
class _MainPageState extends State<MyDefaultTabControllerScreen1>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabController'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: true,
          bottom: TabBar(controller: tabController, tabs: [
            Tab(icon: Icon(Icons.alarm_rounded)),
            Tab(icon: Icon(Icons.gif_box))
          ]),
        ),
        body: TabBarView(controller: tabController, children: screens));
  }
}
