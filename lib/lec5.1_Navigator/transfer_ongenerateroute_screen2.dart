import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lecture_flutter/lec5.1_Navigator/navigator_screen1.dart';
import 'package:lecture_flutter/lec5.1_Navigator/transfer_data_screen1.dart';
import 'package:lecture_flutter/main.dart';

class TransferDataOnGenerateRouteScreen2 extends StatelessWidget {
  const TransferDataOnGenerateRouteScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    // final receivedData = ModalRoute.of(context)?.settings.arguments as String;
    final receivedObjectData = ModalRoute.of(context)?.settings.arguments
        as ScreenArgument; //The object ScreenArgument declared in main.dart
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnGenerateRoute:Transfer data BACK'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,/// why dosnt' apply??
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Data received from first screen:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              //if ScreenArgument: receivedObjectData.message
              Text(
                receivedObjectData.title,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              //if ScreenArgument: receivedObjectData.message
              Text(
                receivedObjectData.message,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 2),
            child: const Text(
              'Transfer data BACK',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop('from Second screen');
            },
          )
        ],
      ),
    );
  }
}
