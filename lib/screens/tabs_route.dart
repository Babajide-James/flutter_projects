import 'package:flutter/material.dart';

import './home_screen.dart';
import '../favorites.dart';

class TabsRoute extends StatefulWidget {
  const TabsRoute({super.key});
  @override
  State<TabsRoute> createState() => TabsRouteState();
}

class TabsRouteState extends State<TabsRoute> {
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
        body: TabBarView(children: [HomeScreen(), Favorites()]),
      ),
    );
  }
}
