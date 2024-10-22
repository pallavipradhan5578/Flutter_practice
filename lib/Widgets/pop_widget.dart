import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _showPopupMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildOption(context, "Api Call", Option1Page()),
              _buildOption(context, "Api Call With Image", Option2Page()),
              _buildOption(context, "Linked devices", Option3Page()),
              _buildOption(context, "Starred messages", Option4Page()),
              _buildOption(context, "Payments", Option5Page()),
              _buildOption(context, "Settings", Option6Page()),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop(); // Close the dialog
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              _showPopupMenu(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter Email-Id",
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Password", border: OutlineInputBorder()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Option1Page(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      iconColor: Colors.blue,
                      minimumSize: Size(380, 50),
                      backgroundColor: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Create the individual option pages
class Option1Page extends StatelessWidget {
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
}

class ReusableRow extends StatelessWidget {
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

class Option2Page extends StatelessWidget {
  List<Photos> photoList = [];
  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['url']);
        photoList.add(photos);
      }
      return photoList;
    } else {
      return photoList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Call With Image"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: FutureBuilder(
                future: getPhotos(),
                builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                  return ListView.builder(
                      itemCount: photoList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data![index].title.toString()),
                          leading: Image.network(height: 100,width: 10,snapshot.data![index].url.toString()),
                        );
                      });
                }),
          )
        ],
      ),
    );
  }
}

class Photos {
  String title, url;
  Photos({required this.title, required this.url});
}

class Option3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked devices"),
      ),
      body: Center(
        child: Text("This is Option 3 Page"),
      ),
    );
  }
}

class Option4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred messages"),
      ),
      body: Center(
        child: Text("This is Option 4 Page"),
      ),
    );
  }
}

class Option5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments"),
      ),
      body: Center(
        child: Text("This is Option 5 Page"),
      ),
    );
  }
}

class Option6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Text("This is Option 6 Page"),
      ),
    );
  }
}
