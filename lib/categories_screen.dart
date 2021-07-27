import 'package:flutter/material.dart';
import './dummy_data.dart';
import './categoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        ...DUMMY_CATEGORIES.map((category) {
          return CategoryItem(
            title: category.title,
            color: category.color,
          );
        }).toList()
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: (MediaQuery.of(context).size.width / 2) - 40,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
