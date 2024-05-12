import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/button.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component_screen2.dart';

class MyComponentScreen1 extends StatefulWidget {
  const MyComponentScreen1({super.key});

  @override
  State<MyComponentScreen1> createState() => _MyMainState();
}

class _MyMainState extends State<MyComponentScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Component screen 1'),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyComponentScreen2()));
                },
                title: 'Button 1',
              ),
            )
          ],
        ));
  }
}
