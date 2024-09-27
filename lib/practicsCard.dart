import 'package:flutter/material.dart';
class Practicscard extends StatefulWidget {
  const Practicscard({super.key});

  @override
  State<Practicscard> createState() => _PracticscardState();
}

class _PracticscardState extends State<Practicscard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (body: SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(height: 300,width: 300,
            child: Card(color: Colors.purpleAccent.shade100,elevation: 12,child: Center(
              child: Text
                ("Hello",style: TextStyle(fontSize: 30),),
            ),


            ),
          ) ,Container(height: 300,width: 300,
            child: Card(color: Colors.purpleAccent.shade100,elevation: 12,child: Center(
              child: Text
                ("Hello"),
            ),


            ),
          ) ,Container(height: 300,width: 300,
            child: Card(color: Colors.purpleAccent.shade100,elevation: 12,child: Center(
              child: Text
                ("Hello"),
            ),


            ),
          ) ,Container(height: 300,width: 300,
            child: Card(color: Colors.purpleAccent.shade100,elevation: 12,child: Center(
              child: Text
                ("Hello"),
            ),


            ),
          )

        ],
      ),
    )

    );
  }
}
