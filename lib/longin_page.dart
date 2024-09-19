import 'package:flutter/material.dart';

class LonginPage extends StatefulWidget {
  const LonginPage({super.key});

  @override
  State<LonginPage> createState() => _LonginPageState();
}

class _LonginPageState extends State<LonginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 100,
                child: Text(''),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 300,
              height: 100,
              color: Colors.cyan,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    child: Text(
                      'Left button',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      print('Text button Tapped');
                    },
                    onLongPress: () {
                      print('Text long pressed!!');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      child: Text(
                        'Right Button',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        print('Text button tapped!!');
                      },
                      onLongPress: () {
                        print('text long pressed');
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            width: 300,
            height: 400,
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        color: Colors.cyan,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                                height: 45,
                                width: 180,
                                color: Colors.cyan,
                                child: Center(child: Text('Name'))),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 180,
                                height: 45,
                                color: Colors.cyan,
                                child: Center(child: Text("Email.ID")),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        color: Colors.cyan,
                        child: Center(child: Text('Address')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 290,
                          height: 150,
                          color: Colors.cyan,
                          child: Center(child: Text('Introduction in short'))),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
