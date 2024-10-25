import 'package:flutter/material.dart';

class Stack_widgwt_page extends StatefulWidget {
  const Stack_widgwt_page({super.key});

  @override
  State<Stack_widgwt_page> createState() => _Stack_widgwt_pageState();
}

class _Stack_widgwt_pageState extends State<Stack_widgwt_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(250, 50)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: AlertDialog(
                        title: Text('Do you want to exit ?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yes"),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No"))
                        ],
                      ),
                    );
                  });
            },
            child: Text("Login")),
      ),
    );
  }
}
