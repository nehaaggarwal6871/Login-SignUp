import 'dart:convert';

import 'package:flutter/material.dart';
import 'constants.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  final textstyle = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 32,
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w900,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0, bottom: 10.0,left: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Team",
                    style: textstyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(

              margin: EdgeInsets.all(5.0),
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("loadjson/teams.json"),
                  builder: (context, snapshot) {
                    var mydata = json.decode(snapshot.data.toString());
                    return ListView.builder(
                      //shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            height: 200.0,
                            child: Card(
                              child: Row(
//                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image(
                                    height: 170.0,
                                    width: 170.0,
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      mydata[index]['image'],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          mydata[index]['name'],
                                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 10.0,),
                                        Text(
                                          mydata[index]['work'],
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: mydata == null ? 0 : mydata.length,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
