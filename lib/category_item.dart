import 'package:flutter/material.dart';
import './categorymealsscreen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals', arguments: {
      'id': id,
      'title': title,
    }
        // MaterialPageRoute(
        //   builder: (_) {
        //     return CategoryMealsScreen(id, title);
        //   },
        // ),
        );
  }

  CategoryItem(this.id, this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
