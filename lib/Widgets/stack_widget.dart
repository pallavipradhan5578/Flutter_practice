import 'package:flutter/material.dart';

class StackWidgetPage extends StatefulWidget {
  const StackWidgetPage({super.key});

  @override
  State<StackWidgetPage> createState() => _StackWidgetPageState();
}

class _StackWidgetPageState extends State<StackWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello 👋 ', // Added emoji directly after 'Hello'
            style: TextStyle(fontSize: 40, color: Colors.black), // Default style
            children: <TextSpan>[
              TextSpan(
                text: 'Pallavi',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: ', welcome to Flutter!',
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
