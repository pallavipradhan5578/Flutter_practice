import 'package:flutter/material.dart';
class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview widget"),backgroundColor: Colors.cyan,
      ),body: ListView(
      scrollDirection: Axis.vertical,

      reverse: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("One",style: TextStyle(fontSize: 25),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Two",style: TextStyle(fontSize: 25,),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Three",style: TextStyle(fontSize: 25),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Four",style: TextStyle(fontSize: 25,),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Five",style: TextStyle(fontSize: 25),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Six",style: TextStyle(fontSize: 25,),),
        ),
      ],
    ),
    );
  }
}
