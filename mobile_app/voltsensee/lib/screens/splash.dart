import 'package:flutter/material.dart';
import 'dart:async';
import 'package:voltsensee/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: ColorTween(begin: Colors.lightBlueAccent, end: Colors.blue[900]),
        duration: Duration(seconds: 3),
        builder: (content, Color? color, child) {
          return Scaffold(
            backgroundColor: color,
            body: Center(
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Image.asset("assets/logo.png", width: 250),
              ),
            ),
          );
        });
  }
}
