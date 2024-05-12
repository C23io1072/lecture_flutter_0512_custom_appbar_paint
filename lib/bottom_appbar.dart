import 'package:flutter/material.dart';
import 'package:lecture_flutter/screens/home_screen.dart';

///It doesn't work so I created a single screen and put all these code.
class MyBottomAppBarScreen extends StatefulWidget {
  const MyBottomAppBarScreen({super.key});

  @override
  State<MyBottomAppBarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<MyBottomAppBarScreen> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: tabIndex,
        children: const [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Row(children: [
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 0;
                      });
                    },
                    icon: const Icon(Icons.home)),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    icon: const Icon(Icons.gif_box)),
              )
            ]),
            Row(children: [
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 2;
                      });
                    },
                    icon: const Icon(Icons.location_on)),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 3;
                      });
                    },
                    icon: const Icon(Icons.notifications_off)),
              )
            ])
          ],
        ),
      ),
    );
  }
}
