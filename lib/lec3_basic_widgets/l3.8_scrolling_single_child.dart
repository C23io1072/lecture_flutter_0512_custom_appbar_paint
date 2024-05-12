import 'package:flutter/material.dart';

class ScrollSingleChild extends StatelessWidget {
  const ScrollSingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = [
      Container(
        width: 100,
        height: 150,
        color: Colors.amber,
      ),
      Container(
        width: 100,
        height: 150,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 150,
        color: Colors.green,
      ),
    ];
    return Container(
        height: 350,
        width: 400,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 3, color: Colors.red))),
        //color: Colors.grey[200],
        child: Column(
            //children: listItem,
            children: [
              Text('Scrolling: SingleChildView'),
              Row(
                children: [
                  SizedBox(
                      height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: listItem,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: listItem,
                        ),
                      ))
                ],
              )
            ]));
  }
}
