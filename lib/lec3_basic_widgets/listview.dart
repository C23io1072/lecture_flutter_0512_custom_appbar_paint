import 'dart:math';

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final items = List.generate(1000, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
      ),
      body: ListView(
          // children: items.map((e) => {}).toList();
          ),
    );
  }
}
