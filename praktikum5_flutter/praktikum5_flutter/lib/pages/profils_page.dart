import 'package:flutter/material.dart';
import 'package:praktikum5_flutter/pages/home_page.dart';
import 'package:praktikum5_flutter/pages/settings.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/SettingsPage");
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HomePage");
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 158, 217, 245),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MySetting();
                }));
              },
              child: const Text("Pindah ke Settings Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyHomePage();
                }));
              },
              child: const Text("Kembali ke Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}