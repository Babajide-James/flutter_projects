import 'package:flutter/material.dart';

import '../screens/food_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.id,
    required this.color,
    required this.item,
    super.key,
  });
  final String item;
  final String id;
  final Color color;
  void onTaps(BuildContext ctx) {
    Navigator.of(
      ctx,
    ).pushNamed('/food_route', arguments: {'id': id, 'title': item});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTaps(context),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [color.withValues(alpha: 0.5), color],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Text(item),
      ),
    );
  }
}
