import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Lecture 3.2 10.23
class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = [
      Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ];
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //12.15
        children: [
          Text(
            'Row& Column',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          SizedBox(
              height: 200,
              child: Row(
                //start. center
                mainAxisAlignment: MainAxisAlignment.end, //align in horizontal
                crossAxisAlignment:
                    CrossAxisAlignment.start, // align in vertical
                children: listItem,
              )),
          Divider(height: 5, color: Colors.black),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listItem,
          )),
          Divider(height: 5, color: Colors.black),
        ],
      ),
    );
  }
}
