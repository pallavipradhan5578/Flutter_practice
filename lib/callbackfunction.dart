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
        backgroundColor: Colors.white,
        body: Center(
          child: TextButton(
            child: Text("Click Me!!",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),),
            onPressed: () {
              print("Clicked!!!!");
            },
          ),
        ));
  }
}
