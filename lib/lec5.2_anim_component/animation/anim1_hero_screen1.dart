import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec5.2_anim_component/animation/anim1_hero_screen2.dart';

class AnimationHeroScreen1 extends StatelessWidget {
  const AnimationHeroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero: First screen'),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Hero(
            tag: 'Container tag',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => nextWithCustomAnimation(context),
        heroTag: 'Float button tag',
        child: const Icon(Icons.skip_next),
      ),
    );
  }

  void nextWithHero(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const AnimationHeroScreen2();
        },
      ),
    );
  }

  void nextWithCustomAnimation(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const AnimationHeroScreen2(),
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final offsetAnimation = Tween<Offset>(
            begin: const Offset(-1.0, 1.0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.linear,
            ),
          );
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
