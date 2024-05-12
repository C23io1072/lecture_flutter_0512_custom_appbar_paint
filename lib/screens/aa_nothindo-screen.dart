import 'package:flutter/material.dart';

class NoThingDoScreen extends StatelessWidget {
  const NoThingDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nothing do screen'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child: Text(
            'Nothing do screen',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
