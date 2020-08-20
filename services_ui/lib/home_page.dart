import 'package:flutter/material.dart';
import 'package:servicesui/data.dart';
import 'package:servicesui/details_page.dart';
import 'constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              gradientStartColor,
              gradientEndColor
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3,0.7],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Blogs",
                      style: TextStyle(
                        fontSize: 38,
                        fontFamily: 'Chilanka',
                        color: Colors.white,

                        fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Topics",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                      onChanged: (value){},
                      icon: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child:  Image.asset('assets/images/drop_down.jpg',height: 16.0,width: 16.0,),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 430,
                padding: EdgeInsets.only(left: 32.0),
                child: Swiper(
                  itemCount: services.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 20.0,
                      space: 8
                    ),
                  ),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                  pageBuilder: (context,a,b)=>DetailPage( service : services[index],
                                )
                            )
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 70,),

                              Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100.0,),
                                      Text(
                                        services[index].title,

                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20.0,
                                          fontFamily: 'Chilanka-Regular',
                                          color: Color(0xff47455f)
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Services',

                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                            color: primaryTextColor
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height:32.0),
                                      Row(
                                        children: <Widget>[
                                          Text('Know More',
                                            style: TextStyle(
                                            fontSize: 10.0,
                                            color: Color(0xffe4979e),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          ),
                                          Icon(Icons.arrow_forward,color: secondaryTextColor,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            services[index].image,
                            height: 200.0,
                            width: 250.0,
                            alignment: Alignment(0.0,60.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: navigationColor,
          boxShadow:[
            BoxShadow(
              blurRadius: 3.0,
              spreadRadius: 1.0
            )
          ] ,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36.0),)
        ),
        padding: EdgeInsets.all(6.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.person),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.pages),
            ),
          ],
        ),
      ),
    );
  }
}
