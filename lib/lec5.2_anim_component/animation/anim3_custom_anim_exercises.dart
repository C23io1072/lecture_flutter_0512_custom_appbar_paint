import 'dart:math';

import 'package:flutter/material.dart';

//SOURCE: https://www.youtube.com/watch?v=960CR8J4_tc

class AnimationTweenExercises extends StatefulWidget {
  const AnimationTweenExercises({super.key});

  @override
  State<AnimationTweenExercises> createState() =>
      _AnimationTweenExercisesState();
}

class _AnimationTweenExercisesState extends State<AnimationTweenExercises>
    with TickerProviderStateMixin {
  bool _isShrinked = false;

  Animation? shrinkAnimation;
  Animation? expandAnimation;
  AnimationController? shrinkController;
  AnimationController? expandController;

  @override
  void initState() {
    shrinkController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    shrinkAnimation =
        Tween<double>(begin: 100, end: 0).animate(shrinkController!);
    expandController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    expandAnimation =
        Tween<double>(begin: 0, end: 100).animate(expandController!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          title: const Text('Tween anim exercises',
              style: TextStyle(color: Colors.red)),
          automaticallyImplyLeading: true,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  shrinkController!.forward();
                  setState(() {
                    _isShrinked = !_isShrinked; // Toggle the alignment state
                  });
                },
                child: AnimatedBuilder(
                    animation: shrinkAnimation!,
                    builder: (context, child) {
                      return Center(
                        child: Container(
                          // margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 100,
                          width: expandAnimation!.value,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      );
                    })),
            GestureDetector(
                onTap: () {
                  expandController!.forward();
                  // setState(() {
                  //   _isShrinked = !_isShrinked; // Toggle the alignment state
                  // });
                },
                child: AnimatedBuilder(
                    animation: expandAnimation!,
                    builder: (context, child) {
                      return Center(
                        child: Container(
                          // margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 100,
                          width: shrinkAnimation!.value,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      );
                    }))
          ],
        ));
  }
}
