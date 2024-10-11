import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> { var arrNames=['Siya','Diya','Miya','Riya','sona'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Hello",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),),backgroundColor: Colors.brown,
    ),body: SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ), Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ), Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ), Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                //borderRadius: BorderRadius.only(
                //  topLeft: Radius.circular(21), bottomRight: Radius.circular(25)
                // ),
                border: Border.all(
                    width: 2,
                    color: Colors.cyan
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 7,
                  )
                ],shape: BoxShape.rectangle ),
          ),
        ],
      ),
    ),


        );
  }
}
