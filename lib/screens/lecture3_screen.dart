import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.10_scrolling_grid_view.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.1_container_text.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.2_sizedbox_align.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.3_aspect_fractionally_sized.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.4_expanded_widget.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.5_row_column.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.6_wrap_types.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.7_stack_widget.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.8_scrolling_single_child.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.9_scrolling_list2.dart';

import 'package:lecture_flutter/screens/lecture3_screen_appbar_actions.dart';

class Lecture3Screen extends StatelessWidget {
  const Lecture3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture 3'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
        actions: const [Lecture3ScreenAppBarActions()],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContainerText(),
            SizedBox(height: 5),
            SizedBoxAlign(),
            AspectRatioFractionallySized(),
            ExpandedWidget(),
            RowColumn(),
            WrapTypes(),
            StackWidget(),
            ScrollSingleChild(),
            Text('SCROLLING: ListView'),
            ScrollList2(),
            Text('SCROLLING: GridView'),
            ScrollGridView(),
            Text('SCROLLING: PageView'),
            SizedBox(height: 20),
            Text('ListView.builder'),
            // const MyListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
