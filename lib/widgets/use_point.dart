import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';

class UsePointItem extends StatelessWidget {
  const UsePointItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyBottomNavigationBarScreen()),
        );
      },
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Оноо ашиглах",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            SizedBox(
              width: 3,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
