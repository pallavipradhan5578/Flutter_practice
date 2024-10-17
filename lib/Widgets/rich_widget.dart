import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/icon_widget.dart';

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
                return ListTile(leading: CircleAvatar(backgroundColor: Colors.orange,radius: 40,),
                  title:  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),subtitle: Text("Hello"),trailing: Text("12:00 PM"),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 60,
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


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the SecondScreen when the button is pressed
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => IconWidget()),
          );
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.arrow_back_sharp),
      ), );
  }
}
