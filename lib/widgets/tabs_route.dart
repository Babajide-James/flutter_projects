import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../favorites.dart';
import '../modal/modal.dart';

class TabsRoute extends StatefulWidget {
  const TabsRoute({super.key, required this.favorites});
  final List<FoodModal> favorites;

  @override
  State<TabsRoute> createState() => TabsRouteState();
}

class TabsRouteState extends State<TabsRoute> {
  // List<FoodModal> favoriteMeals = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorLight,
          title: Text(
            'DeliMeals',
            style: TextStyle(
              fontFamily: 'Raleway',
              color: Colors.brown,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Categories'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            Favorites(favoriteMeals: widget.favorites),
          ],
        ),
      ),
    );
  }
}
