import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lecture_flutter/learned_otg/widgets/credit_card.dart';
import 'package:lecture_flutter/widgets/point_item1.dart';
import 'package:lecture_flutter/widgets/use_point.dart';

class PointHistoryScreen extends StatelessWidget {
  const PointHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: Container(
            // alignment: Alignment.center,
            // padding: const EdgeInsets.only(bottom: 15),
            // margin: const EdgeInsets.only(bottom: 16),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 34, 226),
              Color.fromARGB(255, 128, 38, 211),
            ])),
          ),
          title: const Text(
            'Онооны түүх',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
              body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    // title: const Text('Tabs Demo'),

                    flexibleSpace: Container(
                      padding:
                          const EdgeInsets.only(top: 5, left: 16, right: 16),
                      height: 220,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(2.6, 2),
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color.fromARGB(255, 94, 34, 226),
                            Color.fromARGB(255, 128, 38, 211),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PointItem1(),
                          // SizedBox(height: 10),
                          UsePointItem(),
                        ],
                      ),
                    ),
                    pinned: true,
                    floating: true,
                    automaticallyImplyLeading: false,
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(55.0),
                        child: Container(
                            color: Colors.white,
                            width: double.maxFinite,
                            alignment: Alignment.center,
                            child: const TabBar(
                                indicatorColor:
                                    Color.fromARGB(255, 125, 39, 212),
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelStyle: TextStyle(fontSize: 18),
                                // isScrollable: true,
                                tabs: [
                                  Tab(child: Text('Бүгд')),
                                  Tab(child: Text('Нэмэгдсэн')),
                                  Tab(child: Text('Зарцуулсан')),
                                ])))),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Container(
                    color: Colors.grey[50],
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const CreditCard(),
                          SizedBox(
                            height: 60,
                          ),
                          const CreditCard(),
                          SizedBox(
                            height: 60,
                          ),
                          const CreditCard(),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    )),
                // Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350)
              ],
            ),
          )),
        ));
//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
  }
}
