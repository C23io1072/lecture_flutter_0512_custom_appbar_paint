import 'package:flutter/widgets.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Color.fromARGB(197, 148, 218, 155),
      child: Row(
        children: [
          Column(
            children: [
              Text('Expanded1'),
              Container(
                width: 100,
                height: 130,
                color: const Color.fromARGB(174, 35, 129, 236),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(186, 206, 190, 18),
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          Column(
            children: [
              Text('Expanded2'),
              Container(
                width: 100,
                height: 130,
                color: const Color.fromARGB(174, 35, 129, 236),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(186, 206, 190, 18),
                    )),
                    Container(
                      width: 30,
                      color: Color.fromARGB(215, 246, 7, 3),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          Column(
            children: [
              Text('Expanded3'),
              Container(
                width: 100,
                height: 130,
                color: const Color.fromARGB(174, 35, 129, 236),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(186, 206, 190, 18),
                    )),
                    Container(
                      width: 30,
                      color: Color.fromARGB(215, 246, 7, 3),
                    ),
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(186, 206, 190, 18),
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          Column(
            children: [
              Text('Expand: flex'),
              Container(
                width: 70,
                height: 130,
                color: const Color.fromARGB(174, 35, 129, 236),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Color.fromARGB(186, 206, 190, 18),
                        )),
                    Container(
                      width: 10,
                      color: Color.fromARGB(215, 246, 7, 3),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(186, 206, 190, 18),
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
