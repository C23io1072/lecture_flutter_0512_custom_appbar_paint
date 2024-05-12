import 'package:flutter/material.dart';

class MyListTileMapping extends StatelessWidget {
  const MyListTileMapping({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3];
    List<String> title = ['Sparrow', 'Elephant', 'Humming Bird', 'Lion'];
    return Scaffold(
      appBar: AppBar(
          title: const Text('ListTile with map'),
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: true),
      body: Container(
        height: 700,
        // Text('${items[e]}')
        color: Colors.yellow[500],
        child: Column(
          children: intList.map((e) {
            return Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  child: ListTile(
                    leading: const Icon(Icons.add),
                    title: Text(
                      title[e].toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(Icons.done),
                    subtitle: const Text('This is subti'),
                    selected: true,
                    onTap: () {
                      print('object');
                    },
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
