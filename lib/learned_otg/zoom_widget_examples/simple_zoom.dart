import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class SimpleZoom1 extends StatelessWidget {
  const SimpleZoom1({Key? key}) : super(key: key);
  // const SimpleZoom1({Key? key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple zoom'),
      ),
      body: Zoom(
          maxZoomHeight: 1000,
          maxZoomWidth: 1000,
          child: Center(
            child: Text('Happy zoom!'),
          )),
    );
  }
}
