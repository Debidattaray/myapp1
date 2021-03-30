import 'package:flutter/material.dart';
import 'package:myapp1/categorymealsscreen.dart';

import 'categories_screen.dart';

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
      },
    );
  }
}
