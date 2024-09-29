import 'package:flutter/material.dart';

class InkwelWidgetPractics extends StatefulWidget {
  const InkwelWidgetPractics({super.key});

  @override
  State<InkwelWidgetPractics> createState() => _InkwelWidgetPracticsState();
}

class _InkwelWidgetPracticsState extends State<InkwelWidgetPractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkwellWidget'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Tapped on container");
          },
          onLongPress: () {
            print(" Long press on container");
          },
          onDoubleTap: () {
            print("double tapped on container");
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purpleAccent.shade100,
            child: Center(
                child: InkWell(
                    onTap: () {
                      print('Text widget tapped');
                    },
                    child: Text("Click Here",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700)))),
          ),
        ),
      ),
    );
  }
}
