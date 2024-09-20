import 'package:flutter/material.dart';

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            //borderRadius: BorderRadius.only(
              //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
           // ),
        border: Border.all(
          width: 2,
          color: Colors.cyan
        ),
         boxShadow: [
           BoxShadow(
             blurRadius: 11,
             spreadRadius: 7,
           )
         ],shape: BoxShape.rectangle ),
        ),
      ),
    );
  }
}
