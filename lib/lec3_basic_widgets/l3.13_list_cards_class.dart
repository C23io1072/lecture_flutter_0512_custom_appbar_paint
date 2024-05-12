import 'package:flutter/material.dart';

Widget card(String image, String title, BuildContext context) {
  return Card(
    color: Colors.yellow[50],
    elevation: 8.0,
    margin: EdgeInsets.all(4.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Image.network(
            image,
            height: MediaQuery.of(context).size.width * (3 / 4),
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 38.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
