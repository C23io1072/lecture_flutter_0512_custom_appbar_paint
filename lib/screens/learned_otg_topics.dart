import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/screens/bottom_bar_topic.dart';
import 'package:lecture_flutter/learned_otg/screens/tabbar_topic.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_topic.dart';
import 'package:lecture_flutter/lec5.1_Navigator/aa_navigagor0_topic.dart';
import 'package:lecture_flutter/lec5.2_anim_component/aa_anim_component_topic.dart';

//Not screen, just created nearby learned_otg.dart screen
class LearnedOtgTopics extends StatelessWidget {
  const LearnedOtgTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        //color: Colors.blue,
        height: 350,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 250,
                  child: Text(
                    'Topics',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Examples',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text('1'), Text('2'), Text('3')],
                        )
                      ],
                    ))
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            //// Learned Topics Starts from here:
            const NestedScrollViewTopic(),
            const TabBarTopic(),
            const BottomBarsTopic(),
            const NavigatorTopic(), const AnimComponentTopic(),
          ],
        ));
  }
}
