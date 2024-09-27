import 'package:flutter/material.dart';

class Cicleavtarpractics extends StatefulWidget {
  const Cicleavtarpractics({super.key});

  @override
  State<Cicleavtarpractics> createState() => _CicleavtarpracticsState();
}

class _CicleavtarpracticsState extends State<Cicleavtarpractics> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(appBar: AppBar(
      title: Text("How to get current date & time "),backgroundColor: Colors.blue,
    ),
      body: Container(height: 200,width: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            "Current Time : $time.Year",
            style: TextStyle(fontSize: 21),
          ),
              ElevatedButton(onPressed: (){
            setState(() {

            });
              },child: Text("Current Time"),  )
        ]),
      ),
    );
  }
}
