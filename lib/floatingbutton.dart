import 'package:flutter/material.dart';

class Floatingbutton extends StatefulWidget {
  const Floatingbutton({super.key});

  @override
  State<Floatingbutton> createState() => _FloatingbuttonState();
}

class _FloatingbuttonState extends State<Floatingbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            width: 220,
            height: 220,
            color: Colors.orange,
          ),
          Positioned(
            left: 21,top: 21,bottom: 21,right: 21,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.brown.shade300,
            ),
          )
        ],
      ),
    );
  }
}
