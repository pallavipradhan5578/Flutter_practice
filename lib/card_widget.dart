import 'package:flutter/material.dart';
class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 170,width: 170,color: Colors.cyanAccent,
            child: Card(shadowColor: Colors.blue,
              elevation: 12,child: Center(child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text("Hello World",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
              ))

            ),
          ),
        ),
      ),
    );
  }
}
