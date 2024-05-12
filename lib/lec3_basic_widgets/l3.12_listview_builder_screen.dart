import 'package:flutter/material.dart';
import 'package:lecture_flutter/screens/second_screen.dart';

class MyListViewBuilder extends StatefulWidget {
  const MyListViewBuilder({super.key});

  @override
  State<MyListViewBuilder> createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(50, (index) => index);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView.builder'),
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: true,
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 35,
                ))
          ],
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            // return Container(
            //     height: 50,
            //     color: Colors.grey[300],
            //     child: Center(child: Text(listItem[index].toString())));
            return ListTile(
              title: Text(listItem[index].toString()),
            );
          }),
        ));
  }
}
