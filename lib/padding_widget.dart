import 'package:flutter/material.dart';


class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 100,
        color: Colors.cyan,
        child: Text('Hello Devlops'),
      ),
    );
  }
}
