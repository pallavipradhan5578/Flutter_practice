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
            suffixIcon: Icon(Icons.mic),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewScreen()),
                );
              } else if (value == 2) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showCustomKeypad(context); // Show the custom keypad on press
        },
        child: Icon(Icons.dialpad), // Dialpad icon for the button
        backgroundColor: Colors.blue,
      ),
    );
  }

  // Function to show custom keypad as a modal bottom sheet
  void _showCustomKeypad(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        String enteredNumber = "";
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: EdgeInsets.all(10),
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Display entered number
                  Text(
                    enteredNumber,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.5,
                      ),
                      itemCount: 12, // 10 digits + clear and backspace
                      itemBuilder: (context, index) {
                        // Define the button labels (0-9, clear, and backspace)
                        String buttonText;
                        if (index < 9) {
                          buttonText = '${index + 1}';
                        } else if (index == 9) {
                          buttonText = 'Clear';
                        } else if (index == 10) {
                          buttonText = '0';
                        } else {
                          buttonText = '<'; // Backspace
                        }

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (buttonText == 'Clear') {
                                enteredNumber = ""; // Clear input
                              } else if (buttonText == '<') {
                                if (enteredNumber.isNotEmpty) {
                                  enteredNumber = enteredNumber.substring(
                                      0, enteredNumber.length - 1); // Backspace
                                }
                              } else {
                                enteredNumber += buttonText; // Append number
                              }
                            });
                          },
                          child: Card(
                            color: Colors.blue[100],
                            child: Center(
                              child: Text(
                                buttonText,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
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
