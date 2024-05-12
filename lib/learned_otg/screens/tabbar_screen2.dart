import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/learned_otg/screens/point_history_screen.dart';

import 'package:lecture_flutter/learned_otg/widgets/credit_card.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';

class TabBarScreen2 extends StatelessWidget {
  const TabBarScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('DefaultTabController2'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const MyNestedScrollViewScreen()),
          //         );
          //       },
          //       icon: const Icon(Icons.arrow_circle_right_outlined))
          // ],
        ),
        body: Expanded(
          child: Column(
            children: [
              Container(height: 60, color: Colors.black),
              Expanded(
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                            tabs: [Tab(text: '111'), Tab(text: '222')]),
                        Expanded(
                          child: TabBarView(children: [
                            Container(
                              color: Colors.yellow,
                              child: const SingleChildScrollView(
                                child: Column(
                                  children: [
                                    CreditCard(),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    CreditCard(),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    CreditCard()
                                  ],
                                ),
                              ),
                            ),
                            Container(color: Colors.blue),
                          ]),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
