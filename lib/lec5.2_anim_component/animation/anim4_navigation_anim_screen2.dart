import 'package:flutter/material.dart';

class MyNavigationAnimScreen2 extends StatelessWidget {
  const MyNavigationAnimScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Animation'),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
