import 'package:flutter/material.dart';
import 'home_page/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mastering Bloc Forms'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 205, 211, 216),
        ),
        body: const HomePage(),
      ),
    );
  }
}
