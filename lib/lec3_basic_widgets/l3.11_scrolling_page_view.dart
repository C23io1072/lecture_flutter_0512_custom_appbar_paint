import 'package:flutter/material.dart';

class ScrollPageView extends StatelessWidget {
  const ScrollPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(318, (index) => index);
    return Container(
        height: 520,
        width: 400,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 3, color: Colors.red))),
        child: PageView(
          children: listItem
              .map(
                (e) => Container(
                  color: Colors.amber,
                  child: Center(
                      child: Text(e.toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w700))),
                ),
              )
              .toList(),
        ));
  }
}
