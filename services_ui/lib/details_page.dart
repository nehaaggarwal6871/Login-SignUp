import 'package:flutter/material.dart';
import 'data.dart';
import 'constants.dart';

class DetailPage extends StatelessWidget {

  final Services service;

  DetailPage({Key key,this.service}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(height: 300.0,),
                      Text(
                        'Digital Marketing',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: primaryTextColor,
                          fontSize: 40.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Divider(
                        color: Colors.black38,
                      ),
                      SizedBox(height: 30,),
                      Text( service.description ?? '',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis ,
                        style: TextStyle(
                            fontSize: 15,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      SizedBox(height: 30,),
                      Divider(
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
