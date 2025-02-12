import "package:flutter/material.dart";
import "package:voltsensee/screens/login.dart";
import "package:voltsensee/screens/signup.dart";

class WelcomeScreen extends StatelessWidget {
  //final VoidCallback onLoginSuccess;
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 68, 144),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Image.asset("assets/logo.png", width: 250),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogIn(), //SignUp()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/google.png", height: 20),
                      SizedBox(width: 10),
                      Text("Sign In with Email"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextButton(
                  onPressed: () {
                    // Navigate to LogIn Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SignUp() //LogIn(onLoginSuccess: onLoginSuccess),
                          ),
                    );
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/google.png", height: 20),
                        SizedBox(width: 10),
                        Text("Sign In with Google",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Row(
                  children: [
                    Text("Don't have an account yet? "),
                    GestureDetector(
                      child: Text("Sign Up"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
