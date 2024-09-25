import 'package:flutter/material.dart';
import 'package:hello_world/circleavatar_widget.dart';

import 'package:hello_world/dailypractics.dart';
import 'package:hello_world/driven2_page.dart';
import 'package:hello_world/list_tile.dart';
import 'package:hello_world/list_view.dart';
import 'package:hello_world/driven_splasg_page.dart';
import 'package:hello_world/list_view_practics.dart';
import 'package:hello_world/listview_builder.dart';
import 'package:hello_world/listview_separated.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData(
    primarySwatch: Colors.red
  ),
      home: CircleavatarWidget2 ()


      //   Scaffold(
      //     backgroundColor: Colors.teal,
      //     appBar: AppBar(
      //       backgroundColor: Colors.tealAccent,
      //       title: Text("This is Appbar"),
      //     ),
      //     body: Container(
      //       width: 600,
      //      height:500,
      //      color: Colors.cyan,
      //      child:  Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //
      //       children:[
      //         Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //
      //
      //           children: [Text('R-1',style: TextStyle(color: Colors.black,fontSize: 25),),
      //             Text('R0',style: TextStyle(color: Colors.black,fontSize: 25),),
      //             Column(
      //               children: [
      //                 ElevatedButton(onPressed :(){},
      //                 child: Text('Clicked')),
      //                       ElevatedButton(onPressed :(){},
      //                 child: Text('Clicked')),
      //             ],),
      //         Text('R1',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('R2',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('R3',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('R4',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('R5',style: TextStyle(color: Colors.black,fontSize: 25),),
      //
      //
      //         ],
      //         ),
      //         Text('A',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('B',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('C',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('D',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         Text('E',style: TextStyle(color: Colors.black,fontSize: 25),),
      //         ElevatedButton(onPressed :(){},
      //             child: Text('Clicked')),
      //
      //
      //       ]
      //      ),
      //     )
      // ),
      //

      ));
}
