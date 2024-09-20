import 'package:flutter/material.dart';
class PracticsOnly extends StatefulWidget {
  const PracticsOnly({super.key});

  @override
  State<PracticsOnly> createState() => _PracticsOnlyState();
}

class _PracticsOnlyState extends State<PracticsOnly> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.cyan,
      title: Text(
        "Widget Practics",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),
      ),
    ),body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
          children: [
            Container(
            height: 100,width: 100,color: Colors.green,
        ),Container(
        height: 100,width: 100,color: Colors.cyanAccent,
            ),Container(
        height: 100,width: 100,color: Colors.redAccent,
            ),Container(
        height: 100,width: 100,color: Colors.lightGreen,
            ),Container(
        height: 100,width: 100,color: Colors.black,
            ),Container(
        height: 100,width: 100,color: Colors.red,
            ),Container(
        height: 100,width: 100,color: Colors.yellowAccent,
            ),Container(
        height: 100,width: 100,color: Colors.blueAccent,
            ),Container(
        height: 100,width: 100,color: Colors.greenAccent,
            ),
          ]
            ),
            Container(
          height: 100,width: 100,color: Colors.purpleAccent,
        ),Container(
          height: 100,width: 100,color: Colors.cyanAccent,
        ),Container(
          height: 100,width: 100,color: Colors.redAccent,
        ),Container(
          height: 100,width: 100,color: Colors.lightGreen,
        ),Container(
          height: 100,width: 100,color: Colors.black,
        ),Container(
          height: 100,width: 100,color: Colors.red,
        ),Container(
          height: 100,width: 100,color: Colors.pink,
        ),Container(
          height: 100,width: 100,color: Colors.blueAccent,
        ),Container(
          height: 100,width: 100,color: Colors.greenAccent,
        ),
            ]),
      )
    ));











  }
}
