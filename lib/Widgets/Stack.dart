import 'package:flutter/material.dart';
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width:300 ,height: 300,color: Colors.blueGrey,

                  ),
                  Positioned(left: 50,right: 50,top: 50,bottom: 50,
                    child: Container(
                         // width:50 ,height: 50,
                      color: Colors.grey,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),

                          ),
                  ),
                ],
              ),
            ),Card(
            child: Container(height:300,width:300,color:Colors.white,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:300,width:300,color:Colors.red,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:300,width:300,color:Colors.green,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.blue,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.brown,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.white,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.red,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.green,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.blue,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.brown,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.white,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.red,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.green,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.blue,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            ),Card(
            child: Container(height:100,width:100,color:Colors.brown,child: Center(child: Text("Hello"))),color: Colors.purple,elevation: 12,
            )
          ],
        ),
      ),
    );
  }
}
