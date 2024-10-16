import 'package:flutter/material.dart';

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
              _buildOption(context, "New group", Option1Page()),
              _buildOption(context, "New broadcast", Option2Page()),
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
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              _showPopupMenu(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Home Page Content"),
      ),
    );
  }
}

// Create the individual option pages
class Option1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New group"),
      ),
      body: Center(
        child: Text("This is Option 1 Page"),
      ),
    );
  }
}

class Option2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New broadcast"),
      ),
      body: Center(
        child: Text("This is Option 2 Page"),
      ),
    );
  }
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
