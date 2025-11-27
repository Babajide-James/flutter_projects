import 'package:flutter/material.dart';

class CategoryModels {
  final String id;
  final String title;
  final Color color;

  CategoryModels({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
