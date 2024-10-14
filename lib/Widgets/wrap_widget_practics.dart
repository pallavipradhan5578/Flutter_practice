import 'package:flutter/material.dart';
class WrapWidgetPractics extends StatefulWidget {
  const WrapWidgetPractics({super.key});

  @override
  State<WrapWidgetPractics> createState() => _WrapWidgetPracticsState();
}

class _WrapWidgetPracticsState extends State<WrapWidgetPractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("My App"),
      centerTitle: true,backgroundColor: Colors.blue,
    ),body: Container(width: double.infinity,
      height: double.infinity,
      child: Wrap(
        spacing: 7,runSpacing: 7,
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceAround,

        children: [

          Container(
              height: 100,width: 100,color: Colors.green
          ),Container(
              height: 100,width: 100,color: Colors.red
          ),Container(
              height: 100,width: 100,color: Colors.blue
          ),Container(
              height: 100,width: 100,color: Colors.purple
          ),Container(
              height: 100,width: 100,color: Colors.orange
          ),Container(
              height: 100,width: 100,color: Colors.grey
          ),Container(
              height: 100,width: 100,color: Colors.brown
          ),Container(
              height: 100,width: 100,color: Colors.blueGrey
          ),Container(
              height: 100,width: 100,color: Colors.cyan
          ),Container(
              height: 100,width: 100,color: Colors.lightGreen
          ),Container(
              height: 100,width: 100,color: Colors.yellow
          )
        ],
      ),
    ),

    );
  }
}
