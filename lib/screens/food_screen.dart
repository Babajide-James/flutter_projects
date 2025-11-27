import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({
    required this.categoryTitle,
    required this.categoryId,
    super.key,
  });
  final String categoryTitle;
  final String categoryId;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Center(child: Text('This is a New Page for Food!')),
    );
  }
}
