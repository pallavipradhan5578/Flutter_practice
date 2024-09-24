import 'package:flutter/material.dart';
class ListviewBuilderWidget extends StatefulWidget {
  const ListviewBuilderWidget({super.key});

  @override
  State<ListviewBuilderWidget> createState() => _ListviewBuilderWidgetState();
}

class _ListviewBuilderWidgetState extends State<ListviewBuilderWidget> {
  var arrNames=['pallu','shivi','ruhi','pari','sona'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Hello",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),),backgroundColor: Colors.brown,
    ),body: ListView.builder(itemBuilder: (context,index){
      return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize:21),);
    },itemCount: arrNames.length,
      itemExtent:100,
    ),

    );
  }
}
