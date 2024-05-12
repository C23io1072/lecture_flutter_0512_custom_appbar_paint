import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/zoom_widget_examples/custom_zoom.dart';
import 'package:lecture_flutter/learned_otg/zoom_widget_examples/init_total_zoom_out.dart';
import 'package:lecture_flutter/learned_otg/zoom_widget_examples/simple_zoom.dart';
import 'package:lecture_flutter/learned_otg/zoom_widget_examples/zoomeable_image_gallery.dart';
// import 'package:mobile/examples/custom_zoom.dart';

class HomePageZoomWidget extends StatelessWidget {
  HomePageZoomWidget({Key? key}) : super(key: key);
  // const HomePageZoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoom_widget examples'),
      ),
      body: ListView(
        padding: EdgeInsets.all(
          8.0,
        ),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SimpleZoom1(),
                ),
              );
            },
            child: Text(
              'Simple zoom',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => InitTotalZoomOut(),
                ),
              );
            },
            child: Text(
              'Init total zoom out',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => CustomZoom(),
                ),
              );
            },
            child: Text(
              'Custom zoom',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ZoomeableImageGallery(),
                ),
              );
            },
            child: Text(
              'Zoomeable image gallery',
            ),
          ),
        ],
      ),
    );
  }
}
