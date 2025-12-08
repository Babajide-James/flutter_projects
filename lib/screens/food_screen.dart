import 'package:flutter/material.dart';

import '../dummies.dart';
import '../food_item.dart';
import '../modal/modal.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});
  static const routeName = '/food_screen';

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  late String categoryTitle;
  late List<FoodModal> categoryFood;
  var select = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!select) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title']!;
      final categoryId = routeArgs['id'];
      categoryFood = FOOD_DUMMIES.where((ctx) {
        return ctx.categories.contains(categoryId);
      }).toList();
      select = true;
    }
    super.didChangeDependencies();
  }

  void _removeId(String mealId) {
    setState(() {
      categoryFood.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(context) {
    // print('itemcount is $categoryFood');
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).primaryColorLight,
      ),
      body: ListView.builder(
        itemCount: categoryFood.length,
        itemBuilder: (ctx, index) => FoodItem(
          removeItem: _removeId,
          ingredients: categoryFood[index].ingredients,
          affordability: categoryFood[index].affordability,
          imageUrl: categoryFood[index].imageUrl,
          id: categoryFood[index].id,
          complexity: categoryFood[index].complexity,
          duration: categoryFood[index].duration,
          title: categoryFood[index].title,
        ),
      ),
    );
  }
}
