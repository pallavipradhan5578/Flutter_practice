import 'package:flutter/material.dart';
class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key});

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
        //  backgroundColor: Colors.green,
          backgroundImage:NetworkImage
           ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7lvNvRmxsgBBInSUEaL5CwCXNvR6sfrFiIg&s'),radius: 55,

        ),
      ),
    );
  }
}
