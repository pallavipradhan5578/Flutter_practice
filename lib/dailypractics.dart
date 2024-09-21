import 'package:flutter/material.dart';

class Dailypractics extends StatefulWidget {
  const Dailypractics({super.key});

  @override
  State<Dailypractics> createState() => _DailypracticsState();
}

class _DailypracticsState extends State<Dailypractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
        ),
        body: ListView(scrollDirection: Axis.vertical,
          reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "One",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Two",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Three",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Four",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Five",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ));
  }
}
