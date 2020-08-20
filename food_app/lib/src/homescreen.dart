import 'package:flutter/material.dart';
import 'package:foodapp/src/data/food_data.dart';
import 'package:foodapp/src/widgets/bought_food.dart';
import 'package:foodapp/src/widgets/food_category.dart';
import 'package:foodapp/src/widgets/home_top_info.dart';
import 'package:foodapp/src/widgets/food_category.dart';
import 'package:foodapp/src/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Food> _foods=foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Foods",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              GestureDetector(
                child: Text("View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _foods.map(_buildFoodItem).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        rating: food.rating,
      ),
    );
  }
}
