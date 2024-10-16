import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Widget"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.add_business_rounded,color:Colors.orange),
                title: Text("Name"),
                subtitle: Text("Product name"),
                trailing: Icon(Icons.shopping_cart,color:Colors.orange ,),
              );
            },
            itemCount: 9,
            itemExtent: 100,
          ),


    );
  }
}
