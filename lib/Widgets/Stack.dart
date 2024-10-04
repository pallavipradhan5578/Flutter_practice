import 'package:flutter/material.dart';
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width:300 ,height: 300,color: Colors.green,

            ),
            Positioned(left: 50,right: 50,top: 50,bottom: 50,
              child: Container(
                   // width:50 ,height: 50,
                color: Colors.purple,

                    ),
            ),
          ],
        ),
      ),
    );
  }
}
