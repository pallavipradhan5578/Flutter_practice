import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(48.0),
          child: ListView(scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hello",style: TextStyle(fontSize: 21,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hello",style: TextStyle(fontSize: 21,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hello",style: TextStyle(fontSize: 21,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hello",style: TextStyle(fontSize: 21,fontWeight:FontWeight.bold),),
              )
            ],
          ),
        ) ,
    );
  }
}
