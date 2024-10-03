import 'package:flutter/material.dart';

class Callbackfunction extends StatefulWidget {
  const Callbackfunction({super.key});

  @override
  State<Callbackfunction> createState() => _CallbackfunctionState();
}

class _CallbackfunctionState extends State<Callbackfunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),SizedBox(width: 215),
        IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined)),
      ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add_box),backgroundColor: Colors.green,),
    );
  }
}
