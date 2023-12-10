import 'package:flutter/material.dart';
import 'package:spent_time/screens/home_screen/home_screen.dart';


class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = const [
    Home_Screen(),
    
  
  
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color.fromARGB(255, 91, 91, 91),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bed_outlined), label: "BOOKINGS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "ADD"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(
            
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}