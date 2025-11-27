import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: const Color.fromARGB(235, 243, 242, 231),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 28),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Drawer(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            child: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ),
          title: Text('DeliMeals', style: TextStyle(color: Colors.blue[200])),
          // centerTitle: true,
        ),
        body: HomeScreen(),
      ),
    );
  }
}
