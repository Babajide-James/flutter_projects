import 'package:flutter/material.dart';

import '../dummies.dart';
import '../category_item.dart';
// import './food_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // void onTap(ctx) {
  //   return Scaffold.of(ctx).openDrawer();
  // }

  @override
  Widget build(BuildContext context) {
    return
    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).primaryColor,
    // leading: InkWell(
    //   onTap: () => onTap(context),
    //   child: Drawer(
    //     backgroundColor: Theme.of(context).primaryColor,
    //     elevation: 0,
    //     child: Icon(Icons.menu),
    //   ),
    // ),
    // title: ,
    // centerTitle: true,
    // ),
    GridView(
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
