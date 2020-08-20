import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Image.network(
                "http://wallpaperheart.com/wp-content/uploads/2018/06/nature-background-images-hd-8.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();

//    path.moveTo(size.width, 0);
//    path.lineTo(0.0, size.height);
//    path.lineTo(size.width,size.height);
    
    path.lineTo(0.0, size.height);

    //first control point and then end point
    path.quadraticBezierTo(size.width*0.25,size.height*0.4,size.width*0.5,size.height*0.6);
    path.quadraticBezierTo(size.width*0.75, size.height*0.8, size.width, size.height*0.6);
//    path.lineTo(size.width, size.height*0.5);
    path.lineTo(size.width, 0);




    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}
