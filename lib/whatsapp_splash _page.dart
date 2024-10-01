import 'package:flutter/material.dart';
class WhatsappSplashApps extends StatefulWidget {
  const WhatsappSplashApps({super.key});

  @override
  State<WhatsappSplashApps> createState() => _WhatsappSplashAppsState();
}

class _WhatsappSplashAppsState extends State<WhatsappSplashApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(

            ),
          )
        ],
      ),
    );
  }
}
