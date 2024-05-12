import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;

  const CustomButton({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.buttonColor),
      onPressed: ontap,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
