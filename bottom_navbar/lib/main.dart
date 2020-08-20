import 'package:flutter/material.dart';
import 'team.dart';

void main()=> runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.teal
  ),
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController=TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budding Programmers"),
      ),
      body: TabBarView(
        children: <Widget>[
          NewPage("Home"),
          NewPage("Blogs"),
          Team(),
          NewPage("Contact Us"),

        ],
        controller: tabController,

      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.book),
            ),
            Tab(
              icon: Icon(Icons.people),

            ),
            Tab(
              icon: Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}



class NewPage extends StatelessWidget {

  final String info;

  NewPage(this.info);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(info)
      ),
    );
  }
}
