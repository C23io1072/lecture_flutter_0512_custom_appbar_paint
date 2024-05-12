import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      //color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, 0),
                          blurRadius: 10)
                    ]),
              ),
              SizedBox(
                width: 30,
              ),
              Text('Text widget',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
            ],
          ),
          Text('Text styling from MaterialAp',
              style: Theme.of(context).textTheme.headlineMedium),
          Text('Text styling from MaterialApp: only change color',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.red)),
          const SizedBox(height: 5),
          // Button widget
          ElevatedButton(
              onPressed: () {
                print('Btn pressed!');
              },
              child: const Row(
                children: [Text('ElevatedButton'), Icon(Icons.access_alarm)],
              )),
        ],
      ),
    );
  }
}
