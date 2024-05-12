import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/color.dart';

class CustomButtonUmnuh extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;

  const CustomButtonUmnuh(
      {super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.buttonColor),
      onPressed: ontap,
      child: Text(title),
    );
  }
}
