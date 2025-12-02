import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/food_screen.dart';
import 'category_item.dart';

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
      // home:  HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        CategoryItem.routeName: (ctx) => FoodScreen(),
      },
    );
  }
}
