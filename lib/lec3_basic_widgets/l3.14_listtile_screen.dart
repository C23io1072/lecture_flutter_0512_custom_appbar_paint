import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyListTileScreen extends StatefulWidget {
  const MyListTileScreen({super.key});

  @override
  State<MyListTileScreen> createState() => _MyListTileScreenState();
}

class _MyListTileScreenState extends State<MyListTileScreen> {
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.add),
                title: const Text(
                  'GFG title',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(Icons.done),
                subtitle: const Text('This is subtitle'),
                selected: true,
                onTap: () {
                  setState(() {
                    txt = 'List Tile pressed';
                  });
                },
              ),
            ),
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
