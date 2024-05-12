import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/screens/point_history_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/tabbar_default_controller_screen0.dart';
import 'package:lecture_flutter/learned_otg/screens/tabbar_screen2.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';

class TabBarTopic extends StatelessWidget {
  const TabBarTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 240,
          child: const Text(
            'TabBar& TabBarView',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyDefaultTabControllerScreen0()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TabBarScreen2()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PointHistoryScreen()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
            ),
          ],
        ),
      ],
    );
  }
}
