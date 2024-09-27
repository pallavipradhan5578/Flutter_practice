import 'package:flutter/material.dart';
class Cicleavtarpractics extends StatefulWidget {
  const Cicleavtarpractics({super.key});

  @override
  State<Cicleavtarpractics> createState() => _CicleavtarpracticsState();
}

class _CicleavtarpracticsState extends State<Cicleavtarpractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: CircleAvatar(backgroundColor: Colors.blue.shade300,maxRadius: 200,
        child: CircleAvatar(backgroundColor: Colors.blue,child: Text("Hello World",style: TextStyle
          (fontWeight: FontWeight.bold,color: Colors.white,fontSize: 21,fontStyle: FontStyle.italic),),radius: 100,


        ),
      ),
    ),

    );
  }
}
