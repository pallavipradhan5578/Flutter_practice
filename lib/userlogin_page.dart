import 'package:flutter/material.dart';

class UserloginPage extends StatefulWidget {
  const UserloginPage({super.key});

  @override
  State<UserloginPage> createState() => _UserloginPageState();
}

class _UserloginPageState extends State<UserloginPage> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("")),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "    Enter your credential to login",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,

                        controller: emailText,
                        // enabled: false,
                        decoration: InputDecoration(
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          hintText: "Username ",
                          hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 14.0),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 1)),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      TextField(
                        controller: passwordText,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: " Password ",
                          //focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(11),
                          //  borderSide:
                          //  BorderSide(color: Colors.deepOrangeAccent, width: 2)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 2)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            String uEmail = emailText.text.toString();
                            String uPass = passwordText.text;
                            print("Email: $uEmail,pass: $uPass");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                            child: Text(
                          " Forgot password?",
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                            child: Row(
                          children: [
                            Center(
                                child: Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            )),
                            Text("Sing Up",
                                style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15))
                          ],
                        )),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
