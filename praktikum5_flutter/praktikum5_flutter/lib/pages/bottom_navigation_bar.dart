import 'package:flutter/material.dart';
import 'package:praktikum5_flutter/pages/home_page.dart';
import 'package:praktikum5_flutter/pages/profils_page.dart';
import 'package:praktikum5_flutter/pages/settings.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  final List<dynamic> _pages = [
    const MyHomePage(),
    const MyProfile(),
    const MySetting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 178, 71, 0),
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
