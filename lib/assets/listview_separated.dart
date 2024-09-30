import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Ishani", "Sona", "Diya", "Sonal", "Shivya", "Aruhi", "Misha","Niya","Disha","Avika","Manisha","Kiran","Pavani","Sonam","Nikki"];

    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(color: Colors.green,fontSize: 30),),
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_outlined)),
        ],
      ),
      body: ListView.separated(
        itemCount: arrNames.length,
        itemBuilder: (context, index) { // Correcting `item` to `index`
          return ListTile(
            leading: CircleAvatar(radius: 25,backgroundColor: Colors.green,
            //  child: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",),
            ), // Display the index
            title: Text(arrNames[index]), // Display the name from the list
            subtitle: Text('hello'), // Placeholder subtitle
            trailing: Icon(Icons.notifications), // Notification icon
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 25, // Height between items
            thickness: 1, // Thickness of the divider
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: CustomListView()));
