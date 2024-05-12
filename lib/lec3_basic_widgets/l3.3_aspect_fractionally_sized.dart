import 'package:flutter/material.dart';

class AspectRatioFractionallySized extends StatelessWidget {
  const AspectRatioFractionallySized({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
      child: Column(
        children: [
          //AspectRatio
          Row(
            children: [
              Column(
                children: [
                  Text('AspectRatio: 2'),
                  Container(
                    // width: 110,
                    height: 70,

                    alignment: Alignment.center,
                    child: AspectRatio(
                        aspectRatio: 2,
                        child: Container(
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text('Урт нь 2 дахин их'),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('AspectRatio:0.5'),
                  Container(
                    height: 70,
                    alignment: Alignment.center,
                    child: AspectRatio(
                        aspectRatio: 0.5,
                        child: Container(
                          color: Colors.amber,
                          alignment: Alignment.center,
                        )),
                  ),
                ],
              ),
              SizedBox(width: 8),
//FractionallySizedBox: Гаднах агуулж бгаа Container-аасаа харьцуулагдана!
              Column(
                children: [
                  Text(
                    'FractionallySizedBox',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 150,
                    height: 70,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.5,
                        child: Container(
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text('Factor 0.5'),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
