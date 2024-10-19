import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var iteams=["Nor","Vira","Saniya","Taniya","trisha","Priyanka","Mona","Nor2","Vira2","Saniya","Taniya","trisha","Priyanka","Mona"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the tap event here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the tap event here
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle the tap event here
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemCount: 12, // Number of ListTiles to show
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,radius: 40,child: Text("Hi"),),
            title: Text(iteams[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), // Display item from the list
            subtitle: Text('Description for ${iteams[index]}'), // Optional subtitle
            onTap: () {
              // Handle tap on the ListTile
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${iteams[index]} tapped!'))
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(); // A separator between each ListTile
        },
      ),
    );
  }
}

