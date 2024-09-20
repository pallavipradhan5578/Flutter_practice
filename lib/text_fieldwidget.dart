import 'package:flutter/material.dart';
class TextFieldwidget extends StatefulWidget {
  const TextFieldwidget({super.key});

  @override
  State<TextFieldwidget> createState() => _TextFieldwidgetState();
}

class _TextFieldwidgetState extends State<TextFieldwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blueGrey,
        ),body:Column(
          children: [
            Text("       Welcome Back",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Text("                      Enter your credential to login",style: TextStyle(fontSize: 15),),
          ],
        )
,
    );
  }
}
