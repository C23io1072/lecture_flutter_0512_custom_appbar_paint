import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim1_hero_screen1.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim2_animated_align.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim2_animated_align2.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim2_animated_container.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim2_animated_container_exercise.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim3_custom_anim_exercise2.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim3_custom_anim_exercises.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim3_custom_animation.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim4_navigation_anim_screen1.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim_other_examples/animated_logo.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim_other_examples/expandable_fab_example.dart';
import 'package:lecture_flutter/lec6.1a_network_umnuh/network_screen_umnuh.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/network_example1_screen.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/network_sceen.dart';
import 'package:lecture_flutter/screens/aa_nothindo-screen.dart';
import 'package:lecture_flutter/screens/lecture56_appbar.dart';

class Lecture5Screen extends StatelessWidget {
  const Lecture5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    final List<Widget> screens = [
      const AnimationHeroScreen1(),
      const MyAnimatedAlign(),
      // const NoThingDoScreen(),
      const AlignAnimationExample(),
      const MyAnimatedContainer(),
      const AnimatedContainerExercise(),
      const AnimatedContainerDemo(),
      const AnimationScreenTween(),
      const AnimationTweenExercises(),
      const MyNavigationAnimScreen1(),
      const ExampleExpandableFab(),
      // const AnimatedLogo(animation: animation),
      const NetworkScreenUmnuh(),
      const NoThingDoScreen(),
      const NetworkScreen(),
      const ApiOne(),

      // const NoThingDoScreen(),
    ];
    List<String> title = [
      '5.06 Animation Hero',
      '5.07a AnimatedAlign',
      '5.07a AnimatedAlign',
      '5.07b AnimatedContainer',
      '5.07b AnimatedContainer',
      '5.08 Custom Animation DEMO',
      '5.08 Custom Anim Exercises',
      '5.09 Navigation Animation',
      ' Expandable Fab',
      // ' Animated Logo',
      '6a.1 Network request/umnuh',
      '6a.2 Firebase',
      '6b.1 Network request',
      '6c.1 Network ApiOne'
    ];
    List<String> subTitle = [
      'Animate widgets between screens',
      'Animated widgets: AnimatedAlign example1',
      'Animated widgets: AnimatedAlign example2',
      'Animated widgets: AnimatedContainer',
      'AnimatedContainer exercises',
      'AnimatedContainer Demo',
      'controller, opacityAnim, sizeAnim, textShake',
      'Custom/Tween anim Exercises',
      'Navigation Anim: Page transition effect',
      ' Anim examples: Expandable Fab example',
      // ' Anim examples:Animated Logo',
      'Upload hiisen umnuh lecture 6',
      'Real-time lecture 6',
      'Work with Firebase Real-time DB',
      'Network request Http'
    ];
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarLecture5(title: 'Lecture 5& 6')),
      body: SingleChildScrollView(
          // height: 700,
          // // Text('${items[e]}')
          // color: Colors.yellow[500],
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
                    if (e <= 13) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => screens[e]));
                    }
                  },
                ),
              ));
        }).toList(),
      )),
    );
  }
}
