import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = [
      "Nor", "Vira", "Saniya", "Taniya", "Trisha", "Priyanka", "Mona",
      "Nor2", "Vira2", "Saniya", "Taniya", "Trisha", "Priyanka", "Mona"
    ];

    return Scaffold(
      appBar: AppBar(
        title: TextField(
        decoration: InputDecoration(
          //labelText: 'Enter your text',
          hintText: 'Search contacts',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          prefixIcon: Icon(Icons.search),
          //prefixIcon: Icon(Icons.text_fields),
          //suffixIcon: Icon(Icons.check_circle),
          suffixIcon: Icon(Icons.mic)
        ),
      ),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 1) {
                // Open a new screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewScreen()),
                );
              } else if (value == 2) {
                // Show a popup dialog
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Popup"),
                    content: Text("This is a popup message"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Close"),
                      ),
                    ],
                  ),
                );
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Call history"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Settings"),
              ),
            ],
          ),
        ],
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
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
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
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 40,
              child: Text("Hi"),
            ),
            title: Text(
              items[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ), // Display item from the list
            subtitle: Text('Description for ${items[index]}'), // Optional subtitle
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${items[index]} tapped!'))
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

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen'),
      ),
      body: Center(
        child: Text('This is a new screen'),
      ),
    );
  }
}
