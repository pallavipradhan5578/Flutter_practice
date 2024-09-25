import 'package:flutter/material.dart';
class ListTileWidget extends StatefulWidget {
  const ListTileWidget({super.key});

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  var arrNames=["Krishna","Arjun","Abhimanyu","bhism","karn",'Subhadra',"Panchali"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index) {
        return ListTile(
          //leading: Text("${index+1}"),
          title:Text(arrNames[index]),
          subtitle:Text('number') ,
          trailing: Icon(Icons.add),

        );
    },itemCount: arrNames.length,
        separatorBuilder: (context,index) {
          return Divider(height: 100, thickness: 2,);
        }));
  }
}
