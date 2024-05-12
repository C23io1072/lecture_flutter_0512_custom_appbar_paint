import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/appbar_custom2_linear_back.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/appbar_custom3_chuhal.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/background_painter_curve.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/background_painter_linear.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/second_pagee.dart';

class CustomAppBar2ndTryScreen extends StatelessWidget {
  const CustomAppBar2ndTryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarLinearBack(
        title: 'CustomAppBar',
        titleWidget: const Icon(Icons.access_time, color: Colors.white),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        showActionIcon: true,
        onMenuActionTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (
                context,
              ) =>
                      const SecondPagee()));
        },
        // background: CustomPaint(painter: DrawLinearBackground()),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        // decoration: BoxDecoration(color: Colors.yellow),
        // child: CustomPaint(
        //   // painter: BackgroundPainter(),
        //   painter: DrawCurveBackground(),
        child: const Center(
          child: Text(
            'Main Page',
            style: TextStyle(fontSize: 30),
          ),
        ),
        // ),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.white.withOpacity(0.1);

    // final path = Path();
    Path myPath = Path();

    myPath.moveTo(width * 0.25, 0);

    myPath.quadraticBezierTo(
        width * 0.7, height * 0.15, width * 0.4, height * 0.3);
    myPath.quadraticBezierTo(
        width * 0.15, height * 0.45, width * 0.4, height * 0.65);
    myPath.quadraticBezierTo(
        width * 0.51, height * 0.75, width * 1, height * 0.85);

    myPath.lineTo(width * 25, 0);
    myPath.lineTo(width, 0);

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
