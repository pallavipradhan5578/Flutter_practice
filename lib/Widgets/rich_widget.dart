import 'package:flutter/material.dart';

class RichWidget extends StatefulWidget {
  const RichWidget({super.key});

  @override
  State<RichWidget> createState() => _RichWidgetState();
}

class _RichWidgetState extends State<RichWidget> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Paro", "Siya", "Bina", "Asha", "Aliya", "Sona"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body:
          ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 100,
                  thickness: 2,
                );
              },
              itemCount: arrNames.length),
          /*ListView.separated(itemBuilder: (context,index){
            return ListTile(leading: Text("${index}"),
              title: Text(arrNames[index]),
              subtitle: Text("Number"),
              trailing: Icon(Icons.add),

            );
          },
              separatorBuilder: (context,index){
            return Divider(height: 30,);
              }, itemCount: arrNames.length)*/


    );
  }
}
