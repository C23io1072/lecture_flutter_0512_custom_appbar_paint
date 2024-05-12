import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get_storage/get_storage.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({super.key});

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _x = 0.0;
  double _y = 0.0;
  // AlignmentGeometry align = Alignment(x, y);
  AlignmentGeometry align = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'AnimatedAlign Not work!',
            style: TextStyle(color: Colors.red),
          ),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: AnimatedAlign(
              alignment: align,
              duration: const Duration(seconds: 300),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              )),
        ),
        floatingActionButton: FloatingActionButton.extended(
            label: const Text('Animated Align'),
            onPressed: () {
              setState(() {
                align = Alignment.center;
                print('align=$align');
              });
            }));
  }
}
