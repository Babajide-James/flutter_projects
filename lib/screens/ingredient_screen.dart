import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import '../dummies.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({super.key});
  static const routeName = '/ingredient';
  // final String ingredient;
  @override
  Widget build(BuildContext context) {
    final ids = ModalRoute.of(context)?.settings.arguments as String;
    // final ingredients = FOOD_DUMMIES.where((ctx) => ctx.id == ids);
    final idImage = FOOD_DUMMIES.firstWhere((element) => element.id == ids);
    return Scaffold(
      appBar: AppBar(title: Text(idImage.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                idImage.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 3,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'INGREDIENTS',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(5),
              // margin: EdgeInsets.all(10),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemCount: idImage.ingredients.length,
                itemBuilder: (ctx, index) => Card(
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 15,
                        minRadius: 10,
                        child: Text('${index + 1}. '),
                      ),
                      SizedBox(width: 10),
                      Text(idImage.ingredients[index]),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 3,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'HOW TO PREPARE',
                style: TextStyle(
                  color: Theme.of(context).dividerColor,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: BoxBorder.all(width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.75,
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemBuilder: (ctx, index) => SizedBox(
                  child: ListTile(
                    leading: CircleAvatar(
                      minRadius: 10,
                      maxRadius: 15,
                      child: Text('#${index + 1}'),
                    ),

                    title: Text(
                      idImage.steps[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                itemCount: idImage.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
