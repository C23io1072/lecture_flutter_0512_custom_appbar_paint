import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_appbar.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/learned_otg/screens/btm_app_bar_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/btm_google_navi_bar_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/point_history_screen.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';
import 'package:lecture_flutter/lec5.1_Navigator/namedroute_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/navigator_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/transfer_data_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/transfer_ongenerateroute_screen1.dart';
import 'package:lecture_flutter/lec5.2_anim_component/anim_part1_screen1.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component_screen1.dart';

class AnimComponentTopic extends StatelessWidget {
  const AnimComponentTopic({super.key});

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
                      builder: (context) => const AnimPart1Screen1()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const TransferDataScreen1()),
              //   );
              // },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyComponentScreen1()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 30,
              // color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
