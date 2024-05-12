import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/lec5.1_Navigator/namedroute_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/navigator_screen2.dart';
import 'package:lecture_flutter/screens/learned_otg.dart';
import 'package:lecture_flutter/screens/learned_otg_topics.dart';

class MyNavigatorScreen1 extends StatelessWidget {
  const MyNavigatorScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 1st screen'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LearnedOtg()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NamedRouteScreen1()),
                );
              },
              icon: const Icon(Icons.arrow_circle_right_outlined))
        ],
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 2),
        child: const Text('Next'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyNavigatorScreen2()));
        },
      )),
    );
  }
}
