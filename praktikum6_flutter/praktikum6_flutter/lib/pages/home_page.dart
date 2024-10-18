import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Mobile 6'),
        backgroundColor: const Color.fromARGB(
            255, 30, 127, 218), // Matches the yellowish color from the image
      ),
      body: Column(
        children: [
          Container(
            width: lebar,
            height: tinggi / 1.2,
            color: Colors.blue, // Outer container color
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: selected ? 300.0 : 100.0,
                  height: selected ? 300.0 : 100.0,
                  color: selected ? const Color.fromARGB(255, 236, 160, 215) : Colors.blue,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  child: const Text(
                    'Klik Saya',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}