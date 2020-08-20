import 'package:flutter/material.dart';

class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;

  Food(
      {this.id, this.name, this.imagePath, this.category, this.price, this.discount, this.rating});

}
final foods=[
  Food(
      id: "1",
     name:"Burger",
     imagePath: "assets/images/burger.jpg",
     category: "1",
     price: 22.0,
     discount: 33.5,
     rating: 99.0,
   ),

  Food(
    id: "1",
    name:"Burger",
    imagePath: "assets/images/burger.jpg",
    category: "1",
    price: 22.0,
    discount: 33.5,
    rating: 99.0,
  ),
 ];

