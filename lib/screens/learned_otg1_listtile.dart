import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/InteractiveViewer/pinch_zoom_screen.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/appbar_custom3_chuhal.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/appbar_custom_2nd_try_screen.dart';
import 'package:lecture_flutter/learned_otg/screens/unique_rnd_nrs_within_range.dart';
import 'package:lecture_flutter/learned_otg/zoom_widget_examples/aa_home_screen.dart';
import 'package:lecture_flutter/lec6.1a_network_umnuh/network_screen_umnuh.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/network_example1_screen.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/network_sceen.dart';
import 'package:lecture_flutter/screens/aa_nothindo-screen.dart';

class LearnedOtgListTile extends StatelessWidget {
  const LearnedOtgListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3, 4];
    final List<Widget> screens = [
      const MyPinchZoom(),
      // const NoThingDoScreen(),
      // const NoThingDoScreen(),
      // const FirebaseScreen(),
      HomePageZoomWidget(),
      const NetworkScreen(),
      const ApiOne(),
      const CustomAppBar2ndTryScreen(),

      // const NoThingDoScreen(),
    ];
    List<String> title = [
      '1 Pinch zoom',
      '2 zoom_widget',
      '3 Network request',
      '4 Network ApiOne',
      '5 Custom AppBar& Paint'
    ];
    List<String> subTitle = [
      'Pinch zoom example',
      'zoom_widget examples',
      'Work with Firebase Real-time DB',
      'Network request Http',
      'So important!!!: CustomAppBar& Paint'
    ];
    return Container(
        height: 700,
        // Text('${items[e]}')
        color: Colors.yellow[500],
        child: Column(
          children: intList.map((e) {
            return Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  child: ListTile(
                    // leading: const Icon(Icons.add),
                    title: Text(
                      title[e].toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp),
                    subtitle: Text(subTitle[e].toString()),
                    selected: true,
                    onTap: () {
                      if (e <= 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screens[e]));
                      }
                    },
                  ),
                ));
          }).toList(),
        ));
  }
}
