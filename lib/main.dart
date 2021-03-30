import 'package:flutter/material.dart';
import 'package:myapp1/screens/category_mealsscreen.dart';
import 'package:myapp1/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.bbbbbccc
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CategorriesScreen(),
      routes: {
        CategoryMealsScreen.routename: (ctx) => CategoryMealsScreen(),
        MealDetail.routename: (ctx) => MealDetail(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategorriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategorriesScreen());
      },
    );
  }
}
