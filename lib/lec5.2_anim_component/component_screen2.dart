import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/button.dart';

class MyComponentScreen2 extends StatefulWidget {
  const MyComponentScreen2({super.key});

  @override
  State<MyComponentScreen2> createState() => _MyMainState();
}

class _MyMainState extends State<MyComponentScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Component screen 2'),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Lets learn about Component',
              style: TextStyle(
                fontSize: 26,
                color: Colors.purple,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 100),
            Center(
                child: CustomButton(
              ontap: () {
                Navigator.of(context).pop('from Second screen');
              },
              title: 'Button 2',
            ))
          ],
        ));
  }
}
