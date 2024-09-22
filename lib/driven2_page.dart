import 'package:flutter/material.dart';

class Driven2Page extends StatefulWidget {
  const Driven2Page({super.key});

  @override
  State<Driven2Page> createState() => _Driven2PageState();
}

class _Driven2PageState extends State<Driven2Page> {
  var usernameText = TextEditingController();
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20),
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 35, right: 35),
          child: TextField(
            controller: usernameText,
            decoration: InputDecoration(filled: true,fillColor: Colors.grey[10],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.red)),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 35, right: 35),
          child: TextField(
            controller: emailText,
            decoration: InputDecoration(filled: true,
              fillColor: Colors.grey[10],
              border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.red)),
              //  suffixText:"Email.id",
              // suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {}),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.green,
              ),
            ),style: TextStyle(color: Colors.red),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 35, right: 35),
            child: TextField(
              obscureText: true,
              controller: passwordText,
              decoration: InputDecoration(filled: true,fillColor: Colors.grey[10],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.red)),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {}),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  )),
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 35, bottom: 10),
              child: Text(
                "I agree to the terms & conditions",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.green,
          width: 350,
          child: ElevatedButton(
            onPressed: () {
              String uName = usernameText.text;
              String uEmail = emailText.toString();
              String uPass = passwordText.text;
              print("Username : $uName,Email : $uEmail,Pass : $uPass,");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Or sign up with",style: TextStyle(color: Colors.black
              ,fontSize:18, ),),
        ),
        Padding(
          padding: const EdgeInsets.only(top:100.0,left:15),
          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text("Already have an account? ",style: TextStyle(fontSize: 15),),
                Text("Sign In",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        )

      ]),
    );
  }
}
