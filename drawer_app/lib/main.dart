import 'package:flutter/material.dart';
import 'home_page.dart';
import 'NewPage.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primarySwatch: Colors.orange,

  ),
  home: HomePage(),
  routes: <String, WidgetBuilder>{
    "/neha": (BuildContext context)=> NewPage("Neha"),
  },
));