import 'package:flutter/material.dart';

import '../favorites.dart';
import '../screens/home_screen.dart';
import './main_drawer.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  List<Map<String, dynamic>> routes = [
    {'route': HomeScreen(), 'title': 'Categories'},
    {'route': Favorites(), 'title': 'Your Favorites'},
  ];
  int routesIndex = 0;

  void onTap(int index) {
    setState(() {
      routesIndex = index;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          routes[routesIndex]['title'],
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: routes[routesIndex]['route'],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).hintColor,
        currentIndex: routesIndex,
        onTap: onTap,
        backgroundColor: Theme.of(context).cardColor,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColorDark,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColorDark,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
