import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> { var arrNames=['Siya','Diya','Miya','Riya','sona'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Hello",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),),backgroundColor: Colors.brown,
    ),body: ListView.separated(itemBuilder: (context,index){
      return Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight:
      FontWeight.w500),);},
      itemCount: arrNames.length,

      separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 4,);

      },

    )
        );
  }
}
