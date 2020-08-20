import 'package:flutter/material.dart';
import 'home_page.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Services  UI",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
