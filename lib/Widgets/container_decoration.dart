import 'package:flutter/material.dart';
class practics12 extends StatefulWidget {
  const practics12({super.key});

  @override
  State<practics12> createState() => _practics12State();
}

class _practics12State extends State<practics12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Sunday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Monday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Tuesday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Wednesday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Thursday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Friday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Saturday",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
      ],

    )
      ,



    );
  }
}
