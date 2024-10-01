import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.amber,
    Colors.purple,
    Colors.blue,
    Colors.red.shade300,
    Colors.brown,
    Colors.deepOrange,
    Colors.pink,

  ];

    return Scaffold(appBar: AppBar(backgroundColor: Colors.grey.shade300,
    title:Text ("GridView.Count"),),
      body: Container(width: 300,
        child: GridView.count(crossAxisCount: 3,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[0],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[1],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[2],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[3],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[4],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[5],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[6],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[7],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[8],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColors[9],),
          ),

        ],),
      ),
    );
  }
}
