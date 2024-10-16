import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Widget"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Icon(
          Icons.camera_alt,
          size: 100,
          color: Colors.orange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when the button is pressed
          print("Floating Action Button Pressed");
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}
