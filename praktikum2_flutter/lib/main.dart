import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: true,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andi Zahrina Athirah Ahmad')
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           
            children: [
              const SizedBox(width: 20,),
              Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(
                  color: const Color.fromARGB(255, 106, 66, 66),
                  width: 5
                ),
                borderRadius: BorderRadius.circular(20)
              ),

              child: const Center(
                child: Text("Selamat datang di pertemuan 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(
                  color: const Color.fromARGB(255, 100, 47, 47),
                  width: 5
                ),
                borderRadius: BorderRadius.circular(20)
              ),

              child: const Center(
                child: Text("Selamat datang di pertemuan 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
                ),
              ),
            ),



            ],
          ),
          Container(
            width: double.infinity,
            height: 300,
            // margin: const EdgeInsets.all(20),
            // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.fromLTRB(20, 10, 23,11),
            color: Colors.purpleAccent,
          )
          
          

        
      ]),
    );
  }
}