import 'package:flutter/material.dart';
import 'dart:convert';


import 'package:http/http.dart' as http;
class Learnapi extends StatefulWidget {
  const Learnapi({super.key});

  @override
  State<Learnapi> createState() => _LearnapiState();
}

class _LearnapiState extends State<Learnapi> {var data = [];
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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(""),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.qr_code_scanner_outlined)),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getUserApi(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("data");
                    } else {
                      return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  ReusableRow(
                                      title: "Name",
                                      value: data[index]['name'].toString()),
                                  ReusableRow(
                                      title: "Id",
                                      value: data[index]['id'].toString()),
                                  ReusableRow(
                                      title: "username",
                                      value:
                                      data[index]['username'].toString()),
                                  ReusableRow(
                                      title: "Adsdres",
                                      value: data[index]['address']['city']
                                          .toString())
                                ],
                              ),
                            );
                          });
                    }
                    return Card();
                  }))
        ],
      ),
    );
  }
}class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}

