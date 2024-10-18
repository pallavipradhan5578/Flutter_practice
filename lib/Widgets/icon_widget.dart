import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/rich_widget.dart';

void main() {
  runApp(MaterialApp(
    home: IconWidget(),
  ));
}

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
          Icons.call,
          size: 100,
          color: Colors.orange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the SecondScreen when the button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RichWidget()),
          );
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Welcome to the Second Screen!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
