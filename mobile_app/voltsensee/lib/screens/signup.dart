import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Image.asset("assets/google.png", height: 50),
                  SizedBox(height: 10),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(fontSize: 35),
                  )
                ],
              )),
        )));
  }
}
