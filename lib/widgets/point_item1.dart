// import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PointItem1 extends StatelessWidget {
  const PointItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              width: 25,
              height: 25,
              child: const Image(
                  image: AssetImage('assets/images/circle_gradient2.png'))),
          const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Таны cu оноо',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  "3322",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 10),
          //   child: Icon(
          //     Icons.arrow_circle_right_outlined,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }
}
