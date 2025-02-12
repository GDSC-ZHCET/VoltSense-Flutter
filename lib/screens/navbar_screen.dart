import "package:flutter/material.dart";
import "package:voltsensee/screens/graph.dart";
import "package:voltsensee/widgets/bottom_nav_bar.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    GraphScreen(),
    // Setting()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, name!"),
      ),
      body: widgetOptions[selectedIndex],
      bottomNavigationBar:
          BottomNavBar(currentIndex: selectedIndex, onTap: _onItemTapped),
    );
  }
}
