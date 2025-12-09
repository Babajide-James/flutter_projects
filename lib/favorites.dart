import 'package:flutter/material.dart';

import './food_item.dart';
import 'modal/modal.dart';

class Favorites extends StatelessWidget {
  final List<FoodModal> favoriteMeals;
  const Favorites({super.key, required this.favoriteMeals});
  //
  @override
  Widget build(context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorite yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) => FoodItem(
          // removeItem: _removeId,
          ingredients: favoriteMeals[index].ingredients,
          affordability: favoriteMeals[index].affordability,
          imageUrl: favoriteMeals[index].imageUrl,
          id: favoriteMeals[index].id,
          complexity: favoriteMeals[index].complexity,
          duration: favoriteMeals[index].duration,
          title: favoriteMeals[index].title,
        ),
      );
    }
  }
}
