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
    Colors.red,
    Colors.brown,
    Colors.deepOrange,
    Colors.pink,

  ];

    return Scaffold(appBar: AppBar(backgroundColor: Colors.grey.shade300,
    title:Text ("GridView.Count"),),
      body: GridView.count(crossAxisCount: 2,
      children: [

        Container(color: arrColors[0],),
        Container(color: arrColors[1],),
        Container(color: arrColors[2],),
        Container(color: arrColors[3],),
        Container(color: arrColors[4],),
        Container(color: arrColors[5],),
        Container(color: arrColors[6],),
        Container(color: arrColors[7],),
        Container(color: arrColors[8],),
        Container(color: arrColors[9],),

      ],),
    );
  }
}
