import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/src/features/contribute/presentation/contribute_screen.dart';
import 'package:hackathon_app/src/features/home/presentation/home_screen.dart';
import 'package:hackathon_app/src/features/identify/presentation/identify_screen.dart';
import 'package:hackathon_app/src/features/music/presentation/music_screen.dart';
import 'package:hackathon_app/src/features/search/presentation/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

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
            context, MaterialPageRoute(builder: (context) => MusicScreen()));
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ContributeScreen()));
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IdentifyScreen()));
      case 4:
        showSearch(
          context: context,
          delegate: SongsCustomSearch(),
        );
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
          icon: Icon(FontAwesomeIcons.houseChimney),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.plusCircle),
          label: 'Contribute',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.do_not_disturb_on_total_silence_rounded),
          label: 'Identify',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
      ],
    );
  }
}
