import 'package:flutter/material.dart';
class practics12 extends StatefulWidget {
  const practics12({super.key});

  @override
  State<practics12> createState() => _practics12State();
}

class _practics12State extends State<practics12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:InkWell(onTap: (){
      print("Tapped on container");
    },onLongPress: (){
      print(" Long press on container");
    },onDoubleTap: (){
      print("double tapped on container");
    },
      child: Center(
        child: Container( width: 200,
          height: 200,color: Colors.blueGrey,
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
