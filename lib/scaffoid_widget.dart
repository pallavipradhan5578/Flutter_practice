import 'package:flutter/material.dart';

class ScaffoidWidget extends StatefulWidget {
  const ScaffoidWidget({super.key});

  @override
  State<ScaffoidWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<ScaffoidWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('This is scaffold '),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 300,
          height: 400,
          color: Colors.lightGreen,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('R1 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('R2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('R3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('R4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('R5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('C1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('C2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('C3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('C4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                    Text('C5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23)),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
