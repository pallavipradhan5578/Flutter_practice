import 'package:flutter/material.dart';
class practicslist extends StatefulWidget {
  const practicslist({super.key});

  @override
  State<practicslist> createState() => _practicslistState();
}

class _practicslistState extends State<practicslist> { var arrNames=["Krishna","Arjun","Abhimanyu","bhism","karn",'Subhadra',"Panchali"];
  @override
  Widget build(BuildContext context) {


    return Scaffold(body: ListView.separated(itemBuilder: (context,index) {
      return ListTile(
        //leading: Text("${index+1}"),
        title:Text(arrNames[index]),
        subtitle:Text('number') ,
        trailing: Icon(Icons.add),

      );
    },itemCount: arrNames.length,
        separatorBuilder: (context,index) {
          return Divider(height: 100, thickness: 2,);
        })

    );
  }
}
