import 'package:flutter/material.dart';
import 'package:new_app/dummies.dart';
import './screens/ingredient_screen.dart';
import '../screens/home_screen.dart';
import 'screens/filter_route.dart';
import 'widgets/bottom_nav.dart';
import '../screens/food_screen.dart';
import './modal/modal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'vegan': false,
    'gluten': false,
    'vegetarian': false,
    'lactose': false,
  };
  List<FoodModal> setFilters = FOOD_DUMMIES;
  List<FoodModal> favoriteMeal = [];
  void filterSetting(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;

      setFilters = FOOD_DUMMIES.where((food) {
        if (filters['vegan']! && !food.isVegan) {
          return false;
        }
        if (filters['gluten']! && !food.isGlutenFree) {
          return false;
        }
        if (filters['vegetarian']! && !food.isVegetarian) {
          return false;
        }
        if (filters['lactose']! && !food.isLactoseFree) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void selectFavorite(String meal) {
    final meals = favoriteMeal.indexWhere((ctx) => ctx.id == meal);
    if (meals >= 0) {
      setState(() {
        favoriteMeal.removeAt((meals));
      });
    } else {
      setState(
        () =>
            favoriteMeal.add(FOOD_DUMMIES.firstWhere((ctx) => ctx.id == meal)),
      );
    }
  }

  bool toggleFavorite(String meal) {
    return favoriteMeal.any((meals) => meals.id == meal);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: const Color.fromARGB(235, 243, 242, 231),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // home:  HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomNav(favoriteMeal: favoriteMeal),
        FoodScreen.routeName: (ctx) => FoodScreen(availableMeals: setFilters),
        IngredientScreen.routeName: (ctx) => IngredientScreen(
          selectFavorite: selectFavorite,
          toggleFavorite: toggleFavorite,
        ),
        Filter.routeName: ((ctx) =>
            Filter(saveFilters: filterSetting, currentFilter: filters)),
      },
      //       onGenerateRoute: (settings){
      // MaterialPageRoute(builder: (ctx)=> HomeScreen());
      //       },
      onUnknownRoute: (settings) {
        MaterialPageRoute(builder: (_) => HomeScreen());
        return null;
      },
    );
  }
}
