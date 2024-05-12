import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.12_listview_builder_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.13_list_cards_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.14_listtile_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.15_listtile_listview_mapping.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/component_screen.dart';

class AppBarLecture5 extends StatelessWidget {
  final String title;
  // final VoidCallback? ontap;
  // final int autoLeading;

  const AppBarLecture5({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      automaticallyImplyLeading: true,
      backgroundColor: Colors.amber,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyComponentScreenLec5()),
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
        )
      ],
    );
  }
}
