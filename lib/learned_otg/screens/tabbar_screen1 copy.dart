import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarScreen1 extends StatefulWidget {
  const TabBarScreen1({super.key});

  @override
  State<TabBarScreen1> createState() => _MainPageState();
}

var tabIndex = 0;
var screens = [
  Container(color: Colors.red),
  Container(color: Colors.yellow),
  Container(color: Colors.green),
  Container(color: Colors.blue)
];

class _MainPageState extends State<TabBarScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabController'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
      ),
      body: IndexedStack(
        index: tabIndex,
        children: screens,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tabIndex = 0;
            print(tabIndex);
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      tabIndex = 0;
                      print(tabIndex);
                    });
                  },
                  icon: const Icon(Icons.menu)),
              const SizedBox(width: 40),
              IconButton(
                  onPressed: () {
                    setState(() {
                      tabIndex = 1;
                      print(tabIndex);
                    });
                  },
                  icon: const Icon(Icons.home))
            ]),
            Row(children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      tabIndex = 2;
                      print(tabIndex);
                    });
                  },
                  icon: const Icon(Icons.person)),
              const SizedBox(width: 40),
              IconButton(
                  onPressed: () {
                    setState(() {
                      tabIndex = 3;
                      print(tabIndex);
                    });
                  },
                  icon: const Icon(Icons.more_vert))
            ])
          ],
        ),
      ),
    );
  }
}
