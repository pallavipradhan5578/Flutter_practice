import 'package:flutter/material.dart';

class Stack_widgwt_page extends StatefulWidget {
  const Stack_widgwt_page({super.key});

  @override
  State<Stack_widgwt_page> createState() => _Stack_widgwt_pageState();
}

class _Stack_widgwt_pageState extends State<Stack_widgwt_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: TextStyle(fontSize: 40, color: Colors.black), // Default style
            children: <TextSpan>[
              TextSpan(text: 'Pallavi', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
              TextSpan(text: ', welcome to Flutter!', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green)),
            ],
          ),
        ),
      )

    );
  }
}
