import 'package:flutter/material.dart';
class WidgetPractics extends StatefulWidget {
  const WidgetPractics({super.key});

  @override
  State<WidgetPractics> createState() => _WidgetPracticsState();
}

class _WidgetPracticsState extends State<WidgetPractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Icon(
        Icons.favorite,
        size: 40.0,
        color: Colors.red,
      ),
    )
      ,

    );
  }
}
