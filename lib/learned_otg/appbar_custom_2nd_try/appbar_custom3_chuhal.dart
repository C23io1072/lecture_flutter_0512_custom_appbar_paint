import 'package:flutter/material.dart';

class CustomAppBar2ndTry extends AppBar
// implements PreferredSizeWidget {
{
  CustomAppBar2ndTry({
    super.key,
    // this.title = '', //default
    required String title,
    required int autoLeadingBool,
    // required Color backgroundColor,
    required this.text,
  }) : super(
          title: Text(title),
          automaticallyImplyLeading: autoLeadingBool == 1 ? true : false,
          // backgroundColor: backgroundColor,
        );

  final String text;

  // @override
  // Size get prefferedSize => const Size(double.maxFinite, 80);

  // @override
  // Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
      child: Stack(
        children: [
          Positioned.fill(
            child: Text(text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white)),
          )
        ],
      ),
    );
  }
}
