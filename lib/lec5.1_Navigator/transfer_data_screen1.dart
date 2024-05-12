import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/lec5.1_Navigator/namedroute_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/navigator_screen2.dart';
import 'package:lecture_flutter/lec5.1_Navigator/transfer_data_screen2.dart';
import 'package:lecture_flutter/main.dart';
import 'package:lecture_flutter/screens/learned_otg.dart';
import 'package:lecture_flutter/screens/learned_otg_topics.dart';

class TransferDataScreen1 extends StatelessWidget {
  const TransferDataScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trensfer data to next screen'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LearnedOtg()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('test'),
          ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 2),
            child: const Text(
              'Transfer data to second screen',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(
                //09.48: 05_RECORDING/AAA_UMNUH/05a_Navigator_Anim.mkv
                //Байгуулагч функцээр нь датагаа дамжуулахгүй гэвэл...
                builder: (context) => const TransferDataScreen2(),
                // settings: const RouteSettings(arguments: 'From the 1st screen'),
                //if Object argument:
                settings: RouteSettings(
                    arguments: ScreenArgument(
                        title: 'Object title: From first screen',
                        message: 'Object message: This is a route argument!')),
              ))
                  .then((data) {
                if (data != null) {
                  print(data);
                }
              });
            },
          )
        ],
      ),
    );
  }
}
