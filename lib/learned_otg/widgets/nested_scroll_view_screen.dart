import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view.dart';

class MyNestedScrollViewScreen extends StatelessWidget {
  const MyNestedScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NestedScrollView Screen'),
        ),
        body: const MyNestedScrollView());
  }
}
