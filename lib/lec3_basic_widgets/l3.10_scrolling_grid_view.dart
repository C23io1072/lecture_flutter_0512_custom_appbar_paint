import 'package:flutter/material.dart';

class ScrollGridView extends StatelessWidget {
  const ScrollGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(318, (index) => index);
    return Container(
        height: 520,
        width: 400,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 3, color: Colors.red))),
        child: GridView.count(
          crossAxisCount: 6,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          //Урт нь 2 дахин их
          //childAspectRatio: 2,
          children: listItem
              .map(
                (e) => Container(
                  color: Colors.amber,
                  child: Text(e.toString()),
                ),
              )
              .toList(),
        ));
  }
}
