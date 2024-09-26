import 'package:flutter/material.dart';

class practicsCardTextfield extends StatefulWidget {
  const practicsCardTextfield({super.key});

  @override
  State<practicsCardTextfield> createState() => _practicsCardTextfieldState();
}

class _practicsCardTextfieldState extends State<practicsCardTextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
        ],
      ),
      drawer: Drawer(),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search your product",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(height: 200,width: 200,
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

Card(shadowColor: Colors.blue,
                          elevation: 12,child: Center(child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text("Hello World",style: TextStyle(fontSize: 29,
                                fontWeight: FontWeight.bold),),
                          )),color: Colors.cyan,

                        ),Card(shadowColor: Colors.blue,
                          elevation: 12,child: Center(child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text("Hello World",style: TextStyle(fontSize: 29,
                                fontWeight: FontWeight.bold),),
                          )),color: Colors.cyan,

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(height: 200,width: 200,
                  child: Card(shadowColor: Colors.blue,
                    elevation: 12,child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text("Hello World",style: TextStyle(fontSize: 29,
                          fontWeight: FontWeight.bold),),
                    )),color: Colors.cyan,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(height: 200,width: 200,
                  child: Card(shadowColor: Colors.blue,
                    elevation: 12,child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text("Hello World",style: TextStyle(fontSize: 29,
                          fontWeight: FontWeight.bold),),
                    )),color: Colors.cyan,

                  ),
                ),
              ),

            ],
          )),
      backgroundColor: Colors.white,
    );
  }
}
