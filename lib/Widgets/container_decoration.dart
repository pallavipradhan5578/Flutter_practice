import 'package:flutter/material.dart';
class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children:[Container(
                color: Colors.purple,
                height:180,
                width: 180,
              ),Positioned(left: 21,bottom: 21,
                child: Container(
                  color: Colors.white,
                  height:18,
                  width: 18,
                ),
              )]
            ),Stack(
                children:[Container(
                  color: Colors.brown,
                  height:180,
                  width: 180,
                ),Positioned(left: 21,bottom: 21,
                  child: Container(
                    color: Colors.white,
                    height:18,
                    width: 18,
                  ),
                )]
            ),Stack(
                children:[Container(
                  color: Colors.blue,
                  height:180,
                  width: 180,
                ),Positioned(left: 21,bottom: 21,
                  child: Container(
                    color: Colors.white,
                    height:18,
                    width: 18,
                  ),
                )]
            ),Stack(
                children:[Container(
                  color: Colors.green,
                  height:180,
                  width: 180,
                ),Positioned(left: 21,bottom: 21,
                  child: Container(
                    color: Colors.white,
                    height:18,
                    width: 18,
                  ),
                )]
            ),Stack(
                children:[Container(
                  color: Colors.orange,
                  height:180,
                  width: 180,
                ),Positioned(left: 21,bottom: 21,
                  child: Container(
                    color: Colors.white,
                    height:18,
                    width: 18,
                  ),
                )]
            ),
          ],
        ),
      ),

    );
  }
}
