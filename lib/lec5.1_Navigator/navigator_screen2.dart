import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.1_Navigator/navigator_screen1.dart';

class MyNavigatorScreen2 extends StatelessWidget {
  const MyNavigatorScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator screen 2'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // automaticallyImplyLeading: false,
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 2),
        child: const Text('Back'),
        onPressed: () {
          Navigator.of(context).pop('from Second screen');
        },
      )),
    );
  }
}
