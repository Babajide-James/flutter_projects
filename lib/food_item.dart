import 'package:flutter/material.dart';

import './modal/modal.dart';
import '../screens/ingredient_screen.dart';

class FoodItem extends StatelessWidget {
  // static const ingredientRoutes = '/ingredient';
  const FoodItem({
    super.key,
    required this.imageUrl,
    required this.complexity,
    required this.affordability,
    required this.duration,
    required this.id,
    required this.title,
    required this.ingredients,
  });
  final String imageUrl;
  final int duration;
  final String title;
  final String id;
  final Affordability affordability;
  final Complexity complexity;
  final List<String> ingredients;

  String get complexityText {
    if (complexity == Complexity.simple) {
      return 'Simple';
    }
    if (complexity == Complexity.challenging) {
      return 'Challenging';
    }
    if (complexity == Complexity.hard) {
      return 'Hard';
    }
    return 'None';
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.luxurious:
        return 'Expensive';
      case Affordability.pricey:
        return 'Pricey';
    }
  }

  void onTap(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(IngredientScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 250,
                    padding: EdgeInsets.all(5),
                    // margin: EdgeInsets.all(30),
                    color: Color.fromRGBO(230, 206, 206, 0.544),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        // backgroundColor: Color.fromRGBO(200, 200, 200, 0.5),
                      ),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
                right: 10,
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('$duration mins'),
                    ],
                  ),
                  SizedBox(width: 10),

                  Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 6),
                      Text(affordabilityText),
                    ],
                  ),
                  SizedBox(width: 10),

                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text(complexityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
