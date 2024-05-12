import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class MyPinchZoom extends StatelessWidget {
  const MyPinchZoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PinchZoom Page'),
      ),
      body: Column(
        children: [
          PinchZoom(
            child: Image.network('https://placekitten.com/640/360'),
            maxScale: 2.5,
            onZoomStart: () {
              print('Start zooming cat');
            },
            onZoomEnd: () {
              print('Stop zooming cat');
            },
          ),
          PinchZoom(
            child: Image.network('https://placedog.net/640/360'),
            maxScale: 2.5,
            onZoomStart: () {
              print('Start zooming dog');
            },
            onZoomEnd: () {
              print('Stop zooming dog');
            },
          ),
        ],
      ),
    );
  }
}
