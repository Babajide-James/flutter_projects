import 'package:flutter/material.dart';
import '../dummies.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryFood = FOOD_DUMMIES.where((ctx) {
      return ctx.categories.contains(categoryId);
    }).toList();
    print('itemcount is $categoryFood');
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).primaryColorLight,
      ),
      body: ListView.builder(
        itemCount: categoryFood.length,
        itemBuilder: (ctx, index) =>
            Center(child: Text(categoryFood[index].title)),
      ),
    );
  }
}
