import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get_storage/get_storage.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  double x = 0.0;
  double y = 0.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  // AlignmentGeometry align = Alignment(x, y);
  AlignmentGeometry align = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Demo'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: AnimatedContainer(
        alignment: Alignment.center,
        // Use the properties stored in the State class.
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: _borderRadius,
        ),
        // Define how long the animation should take.
        duration: const Duration(seconds: 1),
        // Provide an optional curve to make the animation feel smoother.
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final random = Random();
            // print('random=$random');
            setState(() {
              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          label: const Text('AnimatedContainer')),
    );
  }
}
