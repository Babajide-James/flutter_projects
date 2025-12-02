import 'package:flutter/material.dart';

class CategoryModal {
  final String id;
  final String title;
  final Color color;

  CategoryModal({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}

enum Complexity { simple, challenging, hard }

enum Affordability { affordable, pricey, luxurious }

class FoodModal {
  final String id;
  final List<String> categories;
  final String title;
  final int duration;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> ingredients;
  final List<String> steps;
  final bool isLactoseFree;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;

  FoodModal({
    required this.id,
    required this.categories,
    required this.title,
    required this.complexity,
    required this.duration,
    required this.imageUrl,
    required this.affordability,
    required this.ingredients,
    required this.steps,
    required this.isVegan,
    required this.isVegetarian,
    required this.isGlutenFree,
    required this.isLactoseFree,
  });
}
