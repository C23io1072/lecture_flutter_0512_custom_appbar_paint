import 'package:flutter/material.dart';

class SizedBoxAlign extends StatelessWidget {
  const SizedBoxAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        color: Color.fromARGB(255, 246, 246, 243),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 300,
                    height: 70,
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        children: [Text('SizedBox'), Text('w:300 h:70')],
                      ),
                    )),
                SizedBox.square(
                  dimension: 70,
                  child: Container(
                      color: Colors.amber,
                      child: Column(
                        children: [Text('SizedBox'), Text('square')],
                      )),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 100,
                              height: 30,
                              color: Colors.green,
                              child: Text('Align: topLeft'),
                            ),
                          ),
                          Text('with Padding')
                        ],
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 130,
                          height: 30,
                          color: Colors.green,
                          child: Text('Align: bottomRight'),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ));
  }
}
