import 'package:flutter/material.dart';
//import 'package:voltsensee/screens/splash.dart';
//import 'package:voltsensee/screens/login.dart';
//import 'package:voltsensee/screens/navbar_screen.dart';
import 'package:voltsensee/screens/splash.dart';
//import 'package:voltsensee/widgets/bottom_nav_bar.dart';
//import 'package:voltsensee/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Volt Sense',
        debugShowCheckedModeBanner: false,
        home: SplashScreen() //AuthenticationWrapper(), //LogIn() //
        );
  }
}

/*class AuthenticationWrapper extends StatefulWidget {
  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  bool isAuthenticated = false;

  void onLoginSuccess() {
    setState(() {
      isAuthenticated = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAuthenticated
        ? HomeScreen()
        : WelcomeScreen(onLoginSuccess: onLoginSuccess);
  }
}*/
