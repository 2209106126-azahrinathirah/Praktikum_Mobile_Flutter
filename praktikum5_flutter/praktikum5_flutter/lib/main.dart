import 'package:flutter/material.dart';
import 'package:praktikum5_flutter/pages/bottom_navigation_bar.dart';
import 'package:praktikum5_flutter/pages/home_page.dart';
import 'package:praktikum5_flutter/pages/profils_page.dart';
import 'package:praktikum5_flutter/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationPage(),
      routes: {
        "/HomePage" : (context) => const MyHomePage(),
        "/ProfilePage" : (context) => const MyProfile(),
        "/SettingsPage" : (context) => const MySetting(),
        },
    );
  }
}
