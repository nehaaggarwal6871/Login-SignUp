import 'package:flutter/material.dart';
import 'dart:convert';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(

          future: DefaultAssetBundle.of(context).loadString("load_json/person.json"),
          builder: (context,snapshot){
            var mydata=json.decode(snapshot.data.toString());
            return ListView.builder(
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 200.0,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Name : "+mydata[index]['name']),
                                Text("Specialized in : "+mydata[index]['work']),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}
