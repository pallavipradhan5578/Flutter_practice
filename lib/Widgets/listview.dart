import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  var arrNames = ['Siya', 'Diya', 'Miya', 'Riya', 'sona'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),body: ListView.builder(itemBuilder: (context,index){
        return Text('One',style: TextStyle(fontSize: 25),);
    }
    ,itemCount: 5,)

    );
  }
}
