import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});
  static const routeName = '/favorite_route';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      drawer: MainDrawer(),
      body: Center(child: Text('Our New Favorites')),
    );
  }
}
