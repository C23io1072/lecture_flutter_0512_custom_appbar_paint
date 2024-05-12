import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/appbar_cutsom.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/appbar_cutsom_amraa.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/button_filled.dart';

class MyComponentScreenLec5 extends StatelessWidget {
  const MyComponentScreenLec5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: MyAppBarComponent(title: 'Component screen', autoLeading: 1)),
      body: Center(
        child: CustomButton(title: 'btn-filled', ontap: () {}),
      ),
    );
  }
}
