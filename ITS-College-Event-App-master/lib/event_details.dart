import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final DocumentSnapshot index;

  DetailPage({this.index});



  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Future getPost() async{
    var firestore =Firestore.instance;
    QuerySnapshot qn = await firestore.collection('data').getDocuments();
    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff18203d),
      body: Container(
        child: FutureBuilder(
          future: getPost(),
          // ignore: missing_return
          builder: ( _, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return SafeArea(
                bottom: false,
                child: SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[

                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                                  Text(
                                    widget.index.data['name'],
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 56,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),

                                  Text('by ' +
                                    widget.index.data['organiser'],
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 31,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Divider(color: Colors.grey),
                                  SizedBox(height: 32),
                                  Text(
                                    widget.index.data['description'],
                                    maxLines: 999,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 20,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 32),
                                  Divider(color: Colors.grey),

                                ],
                              ),
                            ),

                            Container(
                              height: 60,

                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Center(

                                child: MaterialButton(
                                  height: 45,
                                  minWidth: 25,
                                  child: Text('Register',
                                    style: TextStyle(color: Colors.white,fontSize: 16),
                                  ),
                                  color: Color(0xff25bcbb),
                                  onPressed: () {
//                                    print(widget.index.data['link']);
                                    var url = widget.index.data['link'];
                                    launch(url.toString());
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),

                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.grey, size: 30.0,),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),


                    ],
                  ),
                ),
              );
            }
          }

        )
      ),
    );
  }
}
