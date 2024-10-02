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
      body: Container(
        width: 530,
        height: 530,
        color: Colors.orange,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 320,
                height: 320,
                color: Colors.blueGrey,
                child: Positioned(
                  right: 21,
                  bottom: 21,
                  child: Center(child: Text("Hello",style: TextStyle(fontSize: 40),))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
