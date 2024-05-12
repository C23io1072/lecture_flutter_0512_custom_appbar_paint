import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/screens/tabbar_default_controller_screen1.dart';

class MyDefaultTabControllerScreen0 extends StatefulWidget {
  const MyDefaultTabControllerScreen0({super.key});

  @override
  State<MyDefaultTabControllerScreen0> createState() => _MainPageState();
}

final screens = [
  Container(color: Colors.red),
  Container(color: Colors.green),
];

class _MainPageState extends State<MyDefaultTabControllerScreen0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DefaultTabController0'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyDefaultTabControllerScreen1()),
                  );
                },
                icon: const Icon(Icons.arrow_circle_right_outlined))
          ],
        ),
        body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const Text('BASIC: DefaultTabController'),
                const TabBar(
                    tabs: [Tab(text: 'First tab'), Tab(text: 'second tab')]),
                Expanded(
                  child: TabBarView(children: screens),
                )
              ],
            )));
  }
}
