import 'package:flutter/material.dart';
import 'package:spent_time/screens/addroom_screen/addroom_screen.dart';
import 'package:spent_time/screens/home_screen/home_screen.dart';
import 'package:spent_time/screens/my_rooms/my_rooms.dart';
import 'package:spent_time/screens/settings/settings_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List pages =  [
    
    Home_Screen(),
       AddRooms(),
   MyRoomsScreen(),
 
  
    SettingsScreen(),
   

    
  
  
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color.fromARGB(255, 91, 91, 91),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "ADD"),
          BottomNavigationBarItem(icon: Icon(Icons.bed_outlined), label: "MyRoom"),
         
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}