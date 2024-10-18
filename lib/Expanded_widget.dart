import 'package:flutter/material.dart';
class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex: 1,
              child: Container(width: 60,height:60,color:Colors.red,child: Text("hello"),)),
          Expanded(flex:2,
              child: Container(width: 60,height:60,color:Colors.brown,child: Text("hello"),)),
          Expanded(flex: 3,
              child: Container(width: 60,height:60,color:Colors.cyan,child: Text("hello"),)),

          Expanded(
              child: Container(width: 60,height:60,color:Colors.green,child: Text("hello"),)),

        ],
      ),

    );
  }
}
