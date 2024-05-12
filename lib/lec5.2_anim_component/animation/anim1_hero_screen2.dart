import 'package:flutter/material.dart';

class AnimationHeroScreen2 extends StatelessWidget {
  const AnimationHeroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero: Second screen'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: 'Container tag',
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            Hero(
              tag: 'Float button tag',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
