import "package:flutter/material.dart";
//import 'package:voltsensee/main.dart';

class LogIn extends StatefulWidget {
  //final VoidCallback onLoginSuccess;
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  void handleLogin() {
    //widget.onLoginSuccess();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            /*  title: Text(
          "Login",
          style: TextStyle(fontSize: 30),)*/
            ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 150, horizontal: 50),
                    child: Column(
                      children: [
                        Text(
                          'Log In',
                          style: TextStyle(fontSize: 40),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "Email"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "Password"),
                          obscureText: false,
                        ),
                        TextField(
                          decoration:
                              InputDecoration(labelText: "Confirm Password"),
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: handleLogin, child: Text("Sign In"))
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
