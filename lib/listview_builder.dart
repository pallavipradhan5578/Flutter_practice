import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({super.key});

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "D",
                style: TextStyle(fontSize: 50, color: Colors.green),
              ),
            ),
            Center(
                child: Text('riven', style: TextStyle(fontSize: 45, color: Colors.black,
                    decoration: TextDecoration.underline, decorationColor: Colors.green),
            )
            )
          ],
        ),
      ),
    );
  }
}
