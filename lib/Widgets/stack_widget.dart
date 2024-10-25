import 'package:flutter/material.dart';class Stack_widgwt_page extends StatefulWidget {
  const Stack_widgwt_page({super.key});

  @override
  State<Stack_widgwt_page> createState() => _Stack_widgwt_pageState();
}

class _Stack_widgwt_pageState extends State<Stack_widgwt_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,),body: Stack(
        children: [Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.greenAccent,


                  height: MediaQuery.of(context).size.width / 2,


                ),


              SizedBox(height: 20,),
              Text('',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),


              Text('',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),
              Text('',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
            ],
          ),
        ),
          Positioned(
            right: 40,
            top: 30,
            child: Container(
              height: 25,
              width: 80,
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                  BorderRadius.circular(
                      12)),
            ),
          ),]
    ),
    );
  }
}
