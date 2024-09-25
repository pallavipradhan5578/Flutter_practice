import 'package:flutter/material.dart';
class ListviewSeparated extends StatefulWidget {
  const ListviewSeparated({super.key});

  @override
  State<ListviewSeparated> createState() => _ListviewSeparatedState();
}

class _ListviewSeparatedState extends State<ListviewSeparated> {

  @override
  Widget build(BuildContext context) {
    var arrNames=['Ram','Siya','Ishan','Misha','Niya',"Manisha","Diya","Omkar"];
    return Scaffold (
      body: ListView.separated(itemBuilder: (context,index){
        return Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight:
        FontWeight.w500),);},
          itemCount: arrNames.length,

        separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 4,);

        },

    ));

    }



}

