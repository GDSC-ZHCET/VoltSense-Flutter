import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
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
                  TextField(
                    decoration: InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Username"),
                    keyboardType: TextInputType.name,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Mobile Number"),
                    keyboardType: TextInputType.phone,
                  ),
                  TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Set Your Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility, // Toggle eye icon
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText; // Toggle visibility
                          });
                        },
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.lightBlueAccent, // Blue background
                        foregroundColor: Colors.white, // White text
                      ),
                      child: Text("Submit"))
                ],
              )),
        )));
  }
}
