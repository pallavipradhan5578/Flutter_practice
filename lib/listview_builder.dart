import 'package:flutter/material.dart';
class ListviewBuilderWidget extends StatefulWidget {
  const ListviewBuilderWidget({super.key});

  @override
  State<ListviewBuilderWidget> createState() => _ListviewBuilderWidgetState();
}

class _ListviewBuilderWidgetState extends State<ListviewBuilderWidget> {
  var arrNames=['pallu','shivi','ruhi','pari','sona'];
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
              child: Container(height:300,width:300,color:Colors.white,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.red,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.green,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.blue,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.brown,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.white,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.red,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.green,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.blue,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.brown,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.white,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.red,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:200,width:300,color:Colors.green,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.blue,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            ),Card(
              child: Container(height:300,width:300,color:Colors.brown,child: Center(child: Text("Hello",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))),color: Colors.purple,elevation: 12,
            )
          ],
        ),
      ),
    );
  }
}
