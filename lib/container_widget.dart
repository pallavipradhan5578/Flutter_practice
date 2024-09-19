import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('container widget'),
      ),
      body: Column(
        children: [
          OutlinedButton(
            child: Text('click here!!'),
            onPressed: () {
              print('Text button Tapped');
            },
            onLongPress: () {
              print('Text long pressed!!');
            },
          ),
          TextButton(
            child: Text(
              'click here!!',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              print('Text button tapped!!');
            },
            onLongPress: () {
              print('text long pressed');
            },
          ),
          ElevatedButton(
            child: Text(
              'click here!!',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              print('Text button tapped!!');
            },
            onLongPress: () {
              print('text long pressed');
            },
          )
        ],
      ),
    );
  }
}
