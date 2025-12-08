import 'package:flutter/material.dart';
import 'package:new_app/screens/filter_route.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    Widget customTile(
      String title,
      IconData icon,
      Color color,
      void Function() onTap,
    ) {
      return ListTile(
        leading: Icon(icon, color: color, size: 22),
        title: Text(
          title,
          style: TextStyle(
            color: color,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            // background: Paint(),
            fontSize: 24,
          ),
        ),
        onTap: onTap,
      );
    }

    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 185, 185),
            ),
            alignment: Alignment.center,
            // margin: EdgeInsets.only(top: 10, left: 60, right: 60),
            padding: EdgeInsets.only(top: 150),
            // color: Colors.blue,
            child: Text(
              'OTHER OPTIONS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: const Color.fromARGB(255, 108, 9, 44),
              ),
            ),
          ),
          customTile('Meals', Icons.restaurant, Colors.purple, () {
            Navigator.of(context).pushNamed('/');
          }),
          customTile('Filters', Icons.settings, Colors.green, () {
            Navigator.of(context).pushNamed(Filter.routeName);
          }),
        ],
      ),
    );
  }
}
