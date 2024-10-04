import 'package:flutter/material.dart';
class Exdpanded1 extends StatefulWidget {
  const Exdpanded1({super.key});

  @override
  State<Exdpanded1> createState() => _Exdpanded1State();
}

class _Exdpanded1State extends State<Exdpanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Scrooll view widget'),backgroundColor: Colors.blueAccent,
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(

            children: [SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height:200,
                      color: Colors.green,
                    ),),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height:200,
                      color: Colors.redAccent,
                    ),),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height:200,
                      color: Colors.brown,
                    ),),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height:200,
                      color: Colors.green,
                    ),),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height:200,
                      color: Colors.grey,
                    ),),
                ],
              ),
            ),
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height:200,
                  color: Colors.cyan,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height:200,
                  color: Colors.green,
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height:200,
                  color: Colors.yellow,
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height:200,
                  color: Colors.red,
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height:200,
                  color: Colors.brown ,
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height:200,
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
