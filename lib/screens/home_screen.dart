import 'package:flutter/material.dart';

import '../dummies.dart';
import '../category_item.dart';
// import './food_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Drawer(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          child: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ),
        title: Text('DeliMeals', style: TextStyle(color: Colors.blue[200])),
        // centerTitle: true,
      ),
      body: GridView(
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
      ),
    );
  }
}
