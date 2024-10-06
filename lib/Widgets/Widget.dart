import 'package:flutter/material.dart';
class WidgetPractics extends StatefulWidget {
  const WidgetPractics({super.key});

  @override
  State<WidgetPractics> createState() => _WidgetPracticsState();
}

class _WidgetPracticsState extends State<WidgetPractics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(78.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.search, size: 30),
              Icon(Icons.settings, size: 30),
            ],
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  label: Text("Send"),
                ),
          )
        ],
      ),
    )
      ,

    );
  }
}
