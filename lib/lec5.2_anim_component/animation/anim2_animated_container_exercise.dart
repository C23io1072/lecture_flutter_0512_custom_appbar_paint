import 'package:flutter/material.dart';

class AnimatedContainerExercise extends StatefulWidget {
  const AnimatedContainerExercise({super.key});

  @override
  State<AnimatedContainerExercise> createState() =>
      _AnimatedContainerExerciseState();
}

class _AnimatedContainerExerciseState extends State<AnimatedContainerExercise> {
  bool _isShrinked = false;
  double _width = 100.0;

  void _toggleSize() {
    setState(() {
      _isShrinked = !_isShrinked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Exercises'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _toggleSize();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    alignment: Alignment.center,
                    duration: const Duration(milliseconds: 500),
                    width: _isShrinked ? 20 : 100,
                    height: 100,
                    color: Colors.amber,
                    child: _isShrinked
                        ? const Text('This is a test')
                        : const Text(''),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 500),
                        width: _isShrinked ? 100 : 0,
                        height: 100,
                        color: Colors.blue,
                        child: _isShrinked
                            ? const Text('')
                            : const Text('This is blue'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
