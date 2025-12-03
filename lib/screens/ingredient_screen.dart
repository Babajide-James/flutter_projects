import 'package:flutter/material.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({super.key});
  static const routeName = '/ingredient';
  // final String ingredient;
  @override
  Widget build(BuildContext context) {
    final ids = ModalRoute.of(context)?.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Here!')),
      body: Center(child: Text('$ids')),
    );
  }
}
