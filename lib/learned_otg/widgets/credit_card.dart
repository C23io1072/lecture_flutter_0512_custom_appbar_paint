import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment(2.5, 2),
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 100, 13, 222),
            Color.fromARGB(255, 93, 59, 203),
            Color.fromARGB(255, 129, 48, 242)
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Credit Card',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text('Golomt Bank',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Үлдэгдэл',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text('100,000₮',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Хэрэглэсэн',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text('20,000₮',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
