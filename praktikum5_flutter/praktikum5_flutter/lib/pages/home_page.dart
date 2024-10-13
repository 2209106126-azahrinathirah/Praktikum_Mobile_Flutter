import 'package:flutter/material.dart';
import 'package:praktikum5_flutter/pages/settings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homepage",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 181, 164, 231),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('arin@gmail.com'),
              decoration: BoxDecoration(color: Color.fromARGB(255, 181, 164, 231)),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, "/SettingsPage");
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const MySetting();
                  }),
                );
              },
              child: const Text(
                "Pindah ke Setting Page",
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ProfilePage");
              },
              child: const Text(
                "Pindah ke Profile Page",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
