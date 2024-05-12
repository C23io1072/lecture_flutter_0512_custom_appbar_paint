import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.12_listview_builder_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.13_list_cards_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.14_listtile_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.15_listtile_listview_mapping.dart';

class Lecture3ScreenAppBarActions extends StatelessWidget {
  const Lecture3ScreenAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyListViewBuilder()),
              );
            },
            icon: const Icon(Icons.arrow_circle_right_outlined)),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ListCardsScreen()),
              );
            },
            icon: const Icon(Icons.arrow_circle_right_outlined)),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyListTileScreen()),
              );
            },
            icon: const Icon(Icons.arrow_circle_right_outlined)),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyListTileMapping()),
              );
            },
            icon: const Icon(Icons.arrow_circle_right_outlined))
      ],
    );
  }
}
