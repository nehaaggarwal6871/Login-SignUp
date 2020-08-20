import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String txt;
  NewPage(this.txt);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(txt),),
      body: Center(
        child: Text(txt)
      ),
    );
  }
}
