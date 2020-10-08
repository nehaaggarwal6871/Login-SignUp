import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PastEventPage extends StatefulWidget {
  @override
  _PastEventPageState createState() => _PastEventPageState();
}

class _PastEventPageState extends State<PastEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Event Page'),
        backgroundColor: Color(0xff25bcbb),
      ),
      backgroundColor: Color(0xff18203d),
      body: Center(
        child: Text(
          "Will be \n Updated Soon!!",
          style:
            GoogleFonts.swankyAndMooMoo(
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent
            )
        )
      ),
    );
  }
}
