import 'package:flutter/material.dart';
class CircleavatarWidget2 extends StatefulWidget {
  const CircleavatarWidget2({super.key});

  @override
  State<CircleavatarWidget2> createState() => _CircleavatarWidget2State();
}

class _CircleavatarWidget2State extends State<CircleavatarWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          //backgroundColor: Colors.blue,radius: 150,
          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2023/07/24/07/2'
        '4/flower-wallpaper-8146421_1280.png'),
//radius: 100,
        maxRadius: 200,
          minRadius: 100,
        ),
      ),
    );
}}
