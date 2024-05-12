import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_topic.dart';
import 'package:lecture_flutter/screens/learned_otg1_listtile.dart';
import 'package:lecture_flutter/screens/learned_otg_topics.dart';

class LearnedOtg extends StatelessWidget {
  const LearnedOtg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learned Ot: AppBar'),
          centerTitle: false,
          backgroundColor: Colors.amber,
          //leading: const Icon(Icons.menu),

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
          children: [LearnedOtgTopics(), LearnedOtgListTile()],
        )));
  }
}
