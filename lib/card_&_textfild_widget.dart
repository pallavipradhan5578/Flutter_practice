import 'package:flutter/material.dart';
class practicsCardTextfield extends StatefulWidget {
  const practicsCardTextfield({super.key});

  @override
  State<practicsCardTextfield> createState() => _practicsCardTextfieldState();
}

class _practicsCardTextfieldState extends State<practicsCardTextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blue,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined))
      ],
    ),drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: TextField(decoration: InputDecoration(
          hintText: "Search your product",focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),borderSide:
    BorderSide(color: Colors.blue,width: 2),
        ),enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey
      )


        ),
      ),

    ))
    ,backgroundColor:Colors.white,);
  }
}
