import  'package:flutter/material.dart';
class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('InkwellWidget'),
      backgroundColor: Colors.cyan,
    ),
      body: Center(
        child:InkWell(onTap: (){
          print("Tapped on container");
        },onLongPress: (){
          print(" Long press on container");
        },onDoubleTap: (){
          print("double tapped on container");
        },
          child: Container( width: 200,
            height: 200,color: Colors.cyan,
            child: Center(child: InkWell(onTap: (){
              print('Text widget tapped');
            },
                child: Text("Click Here", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)))),

          ),
        ),
      ),

    );
  }
}
