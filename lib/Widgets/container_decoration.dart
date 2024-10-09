import 'package:flutter/material.dart';
class practics12 extends StatefulWidget {
  const practics12({super.key});

  @override
  State<practics12> createState() => _practics12State();
}

class _practics12State extends State<practics12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.cyan,
          child: Text('Hello'),
        ),Container(
          width: 200,
          height: 100,
          color: Colors.cyan,
          child: Text('Hello Devlops'),
        ),Container(
          width: 200,
          height: 100,
          color: Colors.cyan,
          child: Text('How are you ?'),
        ),Container(
          width: 200,
          height: 100,
          color: Colors.cyan,
          child: Text('I am fine'),
        ),
      ],
    ),

    );
  }
}
