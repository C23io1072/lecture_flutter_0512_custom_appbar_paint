import 'package:flutter/material.dart';
import 'dart:math';

class UniqueRndNrs extends StatefulWidget {
  const UniqueRndNrs({super.key});

  @override
  State<UniqueRndNrs> createState() => _UniqueRndNrsState();
}

class _UniqueRndNrsState extends State<UniqueRndNrs> {
  @override
  Widget build(BuildContext context) {
    List list = List.generate(16, (i) => i);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Unique RND Nrs'),
          automaticallyImplyLeading: true,
        ),
        body: GestureDetector(
          onTap: () {
            // final random = Random();

            setState(() {
              list.shuffle();
            });
            print(list[0]);
            // int randomNum = list[0];
          },
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 300,
              color: Colors.blue,
              child: Text(
                list[0],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ));
  }
}
