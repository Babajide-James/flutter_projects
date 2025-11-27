import 'package:flutter/material.dart';

import '../category_dummies.dart';
import '../category_item.dart';
// import './food_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: CATEGORY_DUMMIES
          .map(
            (ctx) =>
                CategoryItem(color: ctx.color, item: ctx.title, id: ctx.id),
          )
          .toList(),
    );
  }
}
