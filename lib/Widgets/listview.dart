import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> { var arrNames=['Siya','Diya','Miya','Riya','Niya'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Hello",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),),backgroundColor: Colors.brown,
    ),body: ListView.builder(itemBuilder: (context,index){
      return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize:21),);
    },itemCount: arrNames.length,
      reverse: true,
      itemExtent:100,
      scrollDirection:Axis.horizontal ,
    ),
        );
  }
}
