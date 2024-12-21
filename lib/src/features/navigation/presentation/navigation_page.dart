import 'package:flutter/material.dart';
import 'package:hackathon_app/src/features/home/presentation/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  // NavigationPage({required this.child});
  @override
  _BottomNavBarState createState() => _BottomNavBarState();

  // final Widget child;
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // Function to handle navigation item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Ensures all items are shown
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.plus_one_rounded),
          label: 'Contribute',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Identify',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Search',
        ),
      ],
    );
  }
}
