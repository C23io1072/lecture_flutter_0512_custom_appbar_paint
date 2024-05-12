import 'package:flutter/material.dart';

class MyAppBarComponent extends StatelessWidget {
  final String title;
  // final VoidCallback? ontap;
  final int autoLeading;

  const MyAppBarComponent(
      {super.key, required this.title, required this.autoLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: autoLeading == 1 ? true : false,
        backgroundColor: Colors.amber);
  }
}
