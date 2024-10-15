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
          ListView.separated(itemBuilder: (context,index){
            return ListTile(leading: Text("${index}"),
              title: Text(arrNames[index]),
              subtitle: Text("Number"),
              trailing: Icon(Icons.add),

            );
          },
              separatorBuilder: (context,index){
            return Divider(height: 100,);
              }, itemCount: arrNames.length)


    );
  }
}
