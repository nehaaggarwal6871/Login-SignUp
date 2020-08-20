
import 'NewPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User's Profile"),
        centerTitle: true,
        elevation: defaultTargetPlatform==TargetPlatform.android?5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jagmohan Singh"),
              accountEmail: Text("jagmohansingh@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange[100],
                child: Text("P"),
              ),
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pushNamed('/neha');
                //Navigator.of(context).pop();
                },
            ),
            ListTile(
              title: Text('Page Two'),
              trailing: Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context)=> NewPage("Jagmohan")
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
