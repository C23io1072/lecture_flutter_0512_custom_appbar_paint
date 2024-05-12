import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen: AppBar'),
          centerTitle: false,
          backgroundColor: Colors.amber,
          //leading: const Icon(Icons.menu),
          surfaceTintColor: Color.fromARGB(255, 1, 2, 3),
          // backgroundColor: Color(10),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyNestedScrollViewScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_circle_right_outlined))
          ],
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [Text('AppBar with actions')],
        )));
  }
}
