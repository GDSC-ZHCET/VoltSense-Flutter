import 'package:flutter/material.dart';
import 'package:voltsensee/screens/splash.dart';
//import 'package:volt_sense/screens/login.dart';

void main() {
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
        home: SplashScreen() //LogIn() //
        );
  }
}
