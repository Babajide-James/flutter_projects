import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class Filter extends StatefulWidget {
  const Filter({super.key, required this.saveFilters});
  static const routeName = '/favorite_route';
  final Function saveFilters;

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  late Function onChange;
  var _isGlutenFree = false;
  var _isVegan = false;
  var _isVegetarian = false;
  var _isLactoseFree = false;

  Widget filterSwitch(
    String title,
    String subtitle,
    var value,
    ValueChanged<bool> changeValue,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: changeValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              final selectedFilter = {
                'vegan': _isVegan,
                'gluten': _isGlutenFree,
                'vegetarian': _isVegetarian,
                'lactose': _isLactoseFree,
              };
              widget.saveFilters(selectedFilter);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            // color: Colors.black,
            width: double.infinity,
            child: Text(
              'Adjust your meal selection',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          filterSwitch(
            'Gluten-Free',
            'This Food is Gluten-Free',
            _isGlutenFree,
            (newValue) {
              setState(() {
                _isGlutenFree = newValue;
              });
            },
          ),
          filterSwitch('Vegan-Free', 'choose only vegan-free meal', _isVegan, (
            newValue,
          ) {
            setState(() {
              _isVegan = newValue;
            });
          }),
          filterSwitch(
            'Vegetarian',
            'Choose only Vegeterian Meal',
            _isVegetarian,
            (newValue) {
              setState(() {
                _isVegetarian = newValue;
              });
            },
          ),
          filterSwitch(
            'Lactose-Free',
            'Choose Meal that are Lactose-Free',
            _isLactoseFree,
            (newValue) {
              setState(() {
                _isLactoseFree = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
