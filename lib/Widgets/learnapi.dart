import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Practicspage extends StatefulWidget {
  const Practicspage({super.key});

  @override
  State<Practicspage> createState() => _PracticspageState();
}

class _PracticspageState extends State<Practicspage> {
  var data = [];
  Future<void> getUserApi() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      return;
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Api Revision"),
      ),body:
    Column(
      children: [
        Expanded(child: FutureBuilder(future: getUserApi(), builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Text("Loading");
          }else{
            return ListView.builder(itemCount: data.length,itemBuilder: (context,index){
              return Card(
                child: Column(
                  children: [
                    ReusableRow(title: "id", value: data[index]['id'].toString()),
                    ReusableRow(title: "name", value: data[index]['name'].toString()),
                    ReusableRow(title: "email", value: data[index]['email'].toString())
                  ],
                ),
              );
            });
          }
        }))
      ],
    ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? Key, required this.title, required this.value})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value)

        ],
      ),
    );
  }
}

