import 'package:flutter/material.dart';
class Exdpanded1 extends StatefulWidget {
  const Exdpanded1({super.key});

  @override
  State<Exdpanded1> createState() => _Exdpanded1State();
}

class _Exdpanded1State extends State<Exdpanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Scrooll view widget'),backgroundColor: Colors.blueAccent,
    ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Center(
              child: Icon(
                Icons.star,
                color: Colors.red,
                size: 50,
              ),
            ),
          ),
        ),
      )

    );
  }
}
