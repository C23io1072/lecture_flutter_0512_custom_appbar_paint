import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WrapTypes extends StatelessWidget {
  const WrapTypes({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = [
      Container(
        width: 80,
        height: 60,
        color: Colors.amber,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.red,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.green,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.purple,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.blue,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.purple,
      ),
      Container(
        width: 80,
        height: 60,
        color: Colors.blue,
      ),
    ];
    return Container(
      height: 360,
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //12.15
        children: [
          Text(
            'Wrap types: Lecture 3.2-12.40',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          Container(
              height: 150,
              child: Wrap(
                spacing: 50,
                runSpacing: 10,
                children: listItem,
              )),
          Divider(height: 5, color: Colors.black),
          Expanded(
              //height: 250,
              child: Wrap(
            direction: Axis.vertical,
            spacing: 30,
            runSpacing: 10,
            children: listItem,
          )),
          Divider(height: 10, color: Colors.red),
        ],
      ),
    );
  }
}
