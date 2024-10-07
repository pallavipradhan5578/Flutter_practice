import 'package:flutter/material.dart';
class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(body:
     Center(
       child: Container(
         width: 200,
         height: 200,
         decoration: BoxDecoration(
           color: Colors.blue, // Background color
           borderRadius: BorderRadius.circular(15), // Rounded corners
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.5),
               spreadRadius: 5,
               blurRadius: 7,
               offset: Offset(0, 3), // Shadow position
             ),
           ],
           border: Border.all(
             color: Colors.black, // Border color
             width: 2,           // Border width
           ),
         ),
       ),
     )

 );


  }
}
