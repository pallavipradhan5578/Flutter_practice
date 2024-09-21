import 'package:flutter/material.dart';

class MarginWidget extends StatefulWidget {
  const MarginWidget({super.key});

  @override
  State<MarginWidget> createState() => _MarginWidgetState();
}

class _MarginWidgetState extends State<MarginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.brown,
      title: Center(child: Text("Margin & Padding",style: TextStyle(color: Colors.white),)),)
      ,body:
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: 100,height: 100,color: Colors.cyan,
          margin: const EdgeInsets.only(top: 12,left: 32),child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello"),
          ),

        ),
      ),

    );
  }
}
