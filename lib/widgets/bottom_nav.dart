import 'package:flutter/material.dart';

import '../favorites.dart';
import '../screens/home_screen.dart';
import './main_drawer.dart';
import '../modal/modal.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required this.favoriteMeal});
  final List<FoodModal> favoriteMeal;
  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  late List<Map<String, dynamic>> routes;
  int routesIndex = 0;

  @override
  initState() {
    routes = [
      {'route': HomeScreen(), 'title': 'Categories'},
      {
        'route': Favorites(favoriteMeals: widget.favoriteMeal),
        'title': 'Your Favorites',
      },
    ];
    super.initState();
  }

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
