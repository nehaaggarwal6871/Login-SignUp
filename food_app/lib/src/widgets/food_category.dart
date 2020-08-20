import 'package:flutter/material.dart';
import 'package:foodapp/src/models/category_model.dart';
import 'package:foodapp/src/data/category_data.dart';
import 'package:foodapp/src/widgets/FoodCard.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories=categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: ( context, index){
          return FoodCard(
            Name: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        }
      ),
    );
  }
}
