import 'package:flutter/material.dart';

class ScrollList2 extends StatelessWidget {
  const ScrollList2({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(50, (index) => index);
    return Container(
        height: 60,
        color: Colors.grey[400],
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: listItem.map((e) {
            return Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('hello'));
          }).toList(),
        ));
  }
}
