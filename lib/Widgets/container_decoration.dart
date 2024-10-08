import 'package:flutter/material.dart';

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blueGrey,
    ), body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("       Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),),
        Text("                      Enter your credential to login",
          style: TextStyle(fontSize: 15,color: Colors.blue),),Expanded(flex: 2,
            child: Container(width: 60,height:60,color:Colors.red,child: Text("hello"),)),
        Expanded(flex:4,
            child: Container(width: 60,height:60,color:Colors.brown,child: Text("hello"),)),
        Expanded(flex: 3,
            child: Container(width: 60,height:60,color:Colors.cyan,child: Text("hello"),)),

        Expanded(
            child: Container(width: 60,height:60,color:Colors.green,child: Text("hello"),)),

      ],
    )
      ,);
  }}