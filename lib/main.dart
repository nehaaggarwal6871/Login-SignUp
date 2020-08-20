import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLogin=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFDFF8FE),
        ),

        child: Stack(
          children: <Widget>[
            Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: 250.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Welcome !!",
                          style: GoogleFonts.roboto(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4BB8F4),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Text(
                          "Let's Participate in Events in College \n It's Fun Time",
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4BB8F4),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.6,
                    width: MediaQuery.of(context).size.width*0.95,

                    child: Stack(

                      children: <Widget>[
                        //Login Part


                        isLogin? Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          child: Container(
                            height: 550,
                            width: MediaQuery.of(context).size.width*0.98,
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  child: ClipPath(
                                    clipper: SignupClipper(),
                                    child: Container(
                                      height: 500,
                                      width: MediaQuery.of(context).size.width*0.95,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.8)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[

                                          SizedBox(
                                            height: 20.0,
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(left: 30,top: 20.0,right: 30.0),
                                            child: Text("Signup",style: GoogleFonts.roboto(fontWeight: FontWeight.w600,
                                                fontSize: 40.0,
                                                color: Colors.grey[400]
                                            ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                CustomPaint(
                                  // shadow for the box

                                  painter: loginShadowPiant(),

                                  child: ClipPath(
                                    clipper: loginClipper(),
                                    child: Container(
                                      height: 500,
                                      width: MediaQuery.of(context).size.width*0.92,
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          SizedBox(
                                            height: 20.0,
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(left: 30,top: 20.0),
                                            child: Text("Login",style: GoogleFonts.roboto(fontWeight: FontWeight.w600,
                                                fontSize: 32.0,
                                                color: Colors.black
                                            ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 30),
                                            width: 75,
                                            height: 12,
                                            child: Card(
                                              elevation: 2,
                                              color: Color(0xFF4BB8F4),
                                            ),
                                          ),

                                          SizedBox(
                                            height: 60.0,
                                          ),

                                          Container(
                                            width: MediaQuery.of(context).size.width*0.7,
                                            margin: EdgeInsets.only(left: 30.0),
                                            height: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(
                                                    Icons.mail,
                                                    color: Color(0xFF4BB8F4),
                                                    size: 24,
                                                  ),
                                                  labelText: "Email Address",
                                                  labelStyle: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      color: Colors.grey[500]
                                                  )
                                              ),
                                            ),
                                          ),

                                          SizedBox(height: 30.0,),

                                          Container(
                                            width: MediaQuery.of(context).size.width*0.7,
                                            margin: EdgeInsets.only(left: 30.0),
                                            height: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(
                                                    FontAwesomeIcons.eyeSlash,
                                                    color: Color(0xFF4BB8F4),
                                                    size: 20,
                                                  ),
                                                  labelText: "Password",
                                                  labelStyle: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      color: Colors.grey[500]
                                                  )
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30.0,
                                          ),


                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Spacer(),

                                                Text(
                                                  "Forgot Password?",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xFF4BB8F4)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Spacer(),



                                        ],
                                      ),
                                    ),
                                  ),
                                ),


                                Positioned(
                                  left: MediaQuery.of(context).size.width*0.32,
                                  bottom: 35,
                                  child: Align(
                                    alignment: Alignment(0, 10),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 120,
                                          height: 40,

                                          decoration: BoxDecoration(
                                            color: Color(0xFF4BB8F4),
                                            borderRadius: BorderRadius.all(Radius.circular(35)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFF4BB8F4),
                                                spreadRadius: 5,
                                                blurRadius: 10
                                              )
                                            ]
                                          ),
                                          child: MaterialButton(
                                            color: Color(0xFF4BB8F4),
                                            onPressed: null,
                                            child: Text(
                                              "Login",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ) ,
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ): Container(),

                        //Signup
                        isLogin== false?
                        Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.6,
                            margin: EdgeInsets.only(bottom: 20.0),
                            child: Stack(
                              children: <Widget>[
                                CustomPaint(
                                  // shadow for the box

                                  painter: SignuphadowPiant(),

                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        child: ClipPath(
                                          clipper: loginClipper(),
                                          child: Container(
                                            height: 500,
                                            width: MediaQuery.of(context).size.width*0.95,
                                            decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.8)
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[

                                                SizedBox(
                                                  height: 20.0,
                                                ),

                                                Container(
                                                  margin: EdgeInsets.only(left: 30,top: 20.0,right: 30.0),
                                                  child: Text("Login",style: GoogleFonts.roboto(fontWeight: FontWeight.w600,
                                                      fontSize: 40.0,
                                                      color: Colors.grey[400]
                                                  ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      ClipPath(
                                        clipper: SignupClipper(),
                                        child: Container(
                                          height: 500,

                                          width: MediaQuery.of(context).size.width*0.95,
                                          decoration: BoxDecoration(
                                              color: Colors.white
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[

                                              SizedBox(
                                                height: 20.0,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,

                                                children: <Widget>[
                                                  Spacer(),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 30,top: 20.0, right:20.0),
                                                    child: Text("Signup",style: GoogleFonts.roboto(fontWeight: FontWeight.w600,
                                                        fontSize: 40.0,
                                                        color: Colors.black
                                                    ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,

                                                children: <Widget>[
                                                  Spacer(),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 30,right: 35),
                                                    width: 100,
                                                    height: 12,
                                                    child: Card(
                                                      elevation: 2,
                                                      color: Color(0xFF4BB8F4),
                                                    ),
                                                  ),
                                                ],
                                              ),



                                              SizedBox(
                                                height: 60.0,
                                              ),

                                              Container(
                                                width: MediaQuery.of(context).size.width*0.7,
                                                margin: EdgeInsets.only(left: 30.0),
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      icon: Icon(
                                                        Icons.mail,
                                                        color: Color(0xFF4BB8F4),
                                                        size: 24,
                                                      ),
                                                      labelText: "Email Address",
                                                      labelStyle: GoogleFonts.lato(
                                                          fontSize: 16,
                                                          color: Colors.grey[500]
                                                      )
                                                  ),
                                                ),
                                              ),

                                              SizedBox(height: 30.0,),

                                              Container(
                                                width: MediaQuery.of(context).size.width*0.7,
                                                margin: EdgeInsets.only(left: 30.0),
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      icon: Icon(
                                                        FontAwesomeIcons.eyeSlash,
                                                        color: Color(0xFF4BB8F4),
                                                        size: 20,
                                                      ),
                                                      labelText: "Password",
                                                      labelStyle: GoogleFonts.lato(
                                                          fontSize: 16,
                                                          color: Colors.grey[500]
                                                      )
                                                  ),
                                                ),
                                              ),

                                              SizedBox(height: 30.0,),

                                              Container(
                                                width: MediaQuery.of(context).size.width*0.7,
                                                margin: EdgeInsets.only(left: 30.0),
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      icon: Icon(
                                                        FontAwesomeIcons.eyeSlash,
                                                        color: Color(0xFF4BB8F4),
                                                        size: 20,
                                                      ),
                                                      labelText: "Confirm Password",
                                                      labelStyle: GoogleFonts.lato(
                                                          fontSize: 16,
                                                          color: Colors.grey[500]
                                                      )
                                                  ),
                                                ),
                                              ),

                                              Spacer(),


                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),


                                Positioned(
                                  left: MediaQuery.of(context).size.width*0.31,
                                  bottom: 22,
                                  child: Align(
                                      alignment: Alignment(0, 40),
                                      child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 120,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF4BB8F4),
                                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Color(0xFF4BB8F4),
                                                        spreadRadius: 5,
                                                        blurRadius: 10
                                                    )
                                                  ]
                                              ),
                                              child: MaterialButton(
                                                color: Color(0xFF4BB8F4),
                                                onPressed: null,
                                                child: Text(
                                                  "Signup",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]
                                      )
                                  ),


                                ),
                              ],
                            ),
                          ),
                        ) : Container(),



                      ],
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height*0.11,
              right: MediaQuery.of(context).size.width*0.32,
              child: Icon(
                FontAwesomeIcons.cog,
                color: Color(0xFF4BB8F4),
                size: 18,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.2,
              right: MediaQuery.of(context).size.width*0.18,
              child: Icon(
                FontAwesomeIcons.cog,
                color: Color(0xFF4BB8F4),
                size: 12,
              ),
            ),
//            Positioned(
//              top: MediaQuery.of(context).size.height*0.22,
//              left: MediaQuery.of(context).size.width*0.18,
//              child: Icon(
//                LineIcons.close,
//                color: Color(0xFF4BB8F4),
//                size: 24,
//              ),
//            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              left: MediaQuery.of(context).size.width*0.46,
              child: GestureDetector(
                onTap: (){
                  if(isLogin){
                    setState(() {
                      isLogin=false;
                    });cl
                  }
                  else{
                    setState(() {
                      isLogin=true;
                    });
                  }
                },
                child: Text(isLogin?"Signup":"Login",style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF4BB8F4)
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class loginClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path clip=new Path();
    clip.moveTo(0, 70);
    clip.lineTo(0, size.height-70);
    clip.quadraticBezierTo(0.0,size.height, 70, size.height);

    clip.lineTo(size.width-70, size.height);
    clip.quadraticBezierTo(size.width, size.height, size.width, size.height-70);

    clip.lineTo(size.width, size.height*0.3+50);
    clip.quadraticBezierTo(size.width, size.height*0.3, size.width-50, size.height*0.3-50);

    clip.lineTo(70, 0);
    clip.quadraticBezierTo(0, 0 , 0, 70);

    clip.close();

    return clip;

  }
  @override

  bool shouldReclip(CustomClipper<Path> oldClipper)=> false;

}

class SignupClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path clip=Path();
    clip.moveTo(size.width, 70);
    clip.lineTo((size.width), size.height-70);
    clip.quadraticBezierTo(size.width, size.height, size.width-70, size.height);
    
    clip.lineTo(70.0, size.height);
    clip.quadraticBezierTo(0.0, size.height, 0, size.height-70);
    
    clip.lineTo(0, size.height*0.3+50);
    clip.quadraticBezierTo(0, size.height*0.3, 50, size.height*0.3-50);
    
    clip.lineTo(size.width-70, 0);
    clip.quadraticBezierTo(size.width, 0, size.width, 70);
    clip.close();
    return clip;

  }
  @override

  bool shouldReclip(CustomClipper<Path> oldClipper)=> false;

}

class loginShadowPiant extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path clip=new Path();
    clip.moveTo(0, 70);
    clip.lineTo(0, size.height-70);
    clip.quadraticBezierTo(0.0,size.height, 70, size.height);

    clip.lineTo(size.width-70, size.height);
    clip.quadraticBezierTo(size.width, size.height, size.width, size.height-70);

    clip.lineTo(size.width, size.height*0.3+50);
    clip.quadraticBezierTo(size.width, size.height*0.3, size.width-50, size.height*0.3-50);

    clip.lineTo(70, 0);
    clip.quadraticBezierTo(0, 0 , 0, 70);

    clip.close();
    
    canvas.drawShadow(clip, Color(0xFF4BB8F4) , 5, false);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}

class SignuphadowPiant extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path clip=Path();
    clip.moveTo(size.width, 70);
    clip.lineTo((size.width), size.height-70);
    clip.quadraticBezierTo(size.width, size.height, size.width-70, size.height);

    clip.lineTo(70.0, size.height);
    clip.quadraticBezierTo(0.0, size.height, 0, size.height-70);

    clip.lineTo(0, size.height*0.3+50);
    clip.quadraticBezierTo(0, size.height*0.3, 50, size.height*0.3-50);

    clip.lineTo(size.width-70, 0);
    clip.quadraticBezierTo(size.width, 0, size.width, 70);

    clip.close();

    canvas.drawShadow(clip, Color(0xFF4BB8F4) , 5, false);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}