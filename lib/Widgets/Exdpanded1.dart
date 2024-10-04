import 'package:flutter/material.dart';
class Exdpanded1 extends StatefulWidget {
  const Exdpanded1({super.key});

  @override
  State<Exdpanded1> createState() => _Exdpanded1State();
}

class _Exdpanded1State extends State<Exdpanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Expanded(flex: 2,
            child: Container(width: 60,height:60,color:Colors.red,child: Text("hello"),)),
        Expanded(flex:4,
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
