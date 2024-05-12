import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_appbar.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/learned_otg/screens/btm_app_bar_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/btm_google_navi_bar_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/point_history_screen.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';

class BottomBarsTopic extends StatelessWidget {
  const BottomBarsTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 240,
          child: const Text(
            'Btm: Naviga & AppBar',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              // onPressed: () {},
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoogleBtmNaviBarScreen()),
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
                      builder: (context) => const BtmAppBarScreen()),
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
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
