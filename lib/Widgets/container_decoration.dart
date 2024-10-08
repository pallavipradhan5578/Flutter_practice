import 'package:flutter/material.dart';

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blueGrey,
    ), body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("       Welcome Back",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),),
          Text("                      Enter your credential to login",
            style: TextStyle(fontSize: 15,color: Colors.blue),),Center(
            child: CircleAvatar(
              //backgroundColor: Colors.blue,radius: 150,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2023/07/24/07/2'
                  '4/flower-wallpaper-8146421_1280.png'),
      //radius: 100,
              maxRadius: 200,
              minRadius: 100,
            ),
          ),
        ],
      ),
    )
      ,);
  }}