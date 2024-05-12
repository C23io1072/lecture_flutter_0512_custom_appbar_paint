import 'package:flutter/material.dart';

class AppBarAmraa extends AppBar {
  // final VoidCallback? ontap;
  //final bool autoLeading;

  AppBarAmraa({
    super.key,
    required String title,
    // required this.autoLeading,

    required Color? backgroundColor,
  }) : super(
          title: Text(title),
          backgroundColor: backgroundColor,
        );

  // @override
  // Widget build(BuildContext context) {
  //   return AppBar(
  //       title: Text(title),
  //       centerTitle: true,
  //       automaticallyImplyLeading: autoLeading == 1 ? true : false,
  //       backgroundColor: Colors.amber);
  // }
}
