import 'package:flutter/material.dart';

class Callbackfunction extends StatefulWidget {
  const Callbackfunction({super.key});

  @override
  State<Callbackfunction> createState() => _CallbackfunctionState();
}

class _CallbackfunctionState extends State<Callbackfunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: Center(
          child: ElevatedButton(
            child: Text("Click Me!!"),
            onPressed: () {
              print("Clicked!!!!");
            },
          ),
        ));
  }
}
