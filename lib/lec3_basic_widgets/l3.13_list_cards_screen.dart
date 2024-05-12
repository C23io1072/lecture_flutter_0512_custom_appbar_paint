import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.13_list_cards_class.dart';

class ListCardsScreen extends StatefulWidget {
  const ListCardsScreen({super.key});

  @override
  State<ListCardsScreen> createState() => _ListCardsScreenState();
}

class _ListCardsScreenState extends State<ListCardsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/10/20/10/58/elephant-2870777_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/09/08/17/32/humming-bird-439364_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/05/03/22/34/lion-3372720_960_720.jpg'
    ];
    List<String> title = ['Sparrow', 'Elephant', 'Humming Bird', 'Lion'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards List'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
      ),
      body: ListView.builder(
          itemCount: image.length,
          itemBuilder: (BuildContext context, int index) {
            return card(image[index], title[index], context);
          }),
    );
  }
}
