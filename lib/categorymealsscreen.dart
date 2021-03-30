import 'package:flutter/material.dart';
import 'package:myapp1/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routename = '/category-meals';
  // final String categoeyid;
  // final String categoeytitle;

  // CategoryMealsScreen(this.categoeyid, this.categoeytitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categorytitle = routeArgs['title'];
    final categoryid = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    print(categoryMeals);

    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
