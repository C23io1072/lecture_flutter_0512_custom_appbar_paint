import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/appbar_custom2_linear_back.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/background_painter_curve.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/background_painter_linear.dart';

class SecondPagee extends StatelessWidget {
  const SecondPagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarLinearBack(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const BackButton(),
        ),
        background: CustomPaint(painter: DrawLinearBackground()),
      ),
      // body: , //????
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: CustomPaint(
          // painter: BackgroundPainter(),
          painter: DrawCurveBackground(),
          child: const Center(
            child: Text(
              'Second Page',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
