import 'dart:math';

import 'package:flutter/material.dart';

class AnimationScreenTween extends StatefulWidget {
  const AnimationScreenTween({super.key});

  @override
  State<AnimationScreenTween> createState() => _AnimationScreenTweenState();
}

class _AnimationScreenTweenState extends State<AnimationScreenTween>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<double> sizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    controller.addListener(() {
      setState(() {});
    });

    // controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    // controller.forward();

    opacityAnimation = Tween<double>(begin: 0.5, end: 1).animate(controller);
    sizeAnimation = Tween<double>(begin: 100, end: 300).animate(
      CurvedAnimation(
        parent: controller,
        //Goldoo udaashirana:
        // curve: Curves.slowMiddle,
        // curve: Curves.linear,
        curve: Curves.bounceOut,
      ),
    );
    colorAnimation = ColorTween(
      begin: Colors.amber,
      end: Colors.blue,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween animation'),
      ),
      body: Center(
        child: Column(
          children: [
            Opacity(
              opacity: opacityAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
            const ShakeWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   controller.forward(); //trigger the controller/start the animation
        // },
        onPressed: () {
          if (controller.status == AnimationStatus.completed) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
      ),
    );
  }
}

class SineCurve extends Curve {
  const SineCurve({this.count = 3});
  final double count;

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t);
  }
}

class ShakeWidget extends StatefulWidget {
  const ShakeWidget({Key? key}) : super(key: key);
  final double shakeOffset = 100;
  final int shakeCount = 10;

  @override
  ShakeWidgetState createState() => ShakeWidgetState();
}

class ShakeWidgetState extends State<ShakeWidget>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 100), //10 times shake per 100 seconds!!!
  );

  @override
  void initState() {
    super.initState();
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reset();
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  late final Animation<double> _sineAnimation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(CurvedAnimation(
    parent: animationController,
    curve: SineCurve(count: widget.shakeCount.toDouble()),
  ));

  void shake() {
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _sineAnimation,
      child: ElevatedButton(
        onPressed: () {
          animationController.forward();
        },
        child: const Text(
          'Shake text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_sineAnimation.value * widget.shakeOffset, 0),
          child: child,
        );
      },
    );
  }
}
