import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: 'utils',
  theme: ThemeData(
    primarySwatch: Colors.green,
  ),
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static int _current_step=0;
  int i=3;

  List<Step> my_steps=[
    Step(
      title: Text("Step 1"),
      content: Text("Jagmohan Singh"),
      isActive: true,
    ),
    Step(
      title: Text("Step 2"),
      content: Text("weds"),
      isActive: true,
    ),
    Step(
      title: Text("Step 3"),
      content: Text("Neha Kaur"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Container(
        child: Stepper(
          steps: my_steps,
          currentStep: _current_step,
          type: StepperType.horizontal,
          onStepTapped: (i) {
            setState(() {
              _current_step = i;
            });
          },

        ),
      ),
    );
  }
}

























//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}


//class _HomePageState extends State<HomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Utils App"),
//      ),
//      body: Builder(
//        builder: (context){
//          return Center(
//            child: RaisedButton(
//              child: Text("Press me!!"),
//              onPressed: (){
//                Scaffold.of(context).showSnackBar(
//                  SnackBar(
//                    content: Text("You pressed me!!"),
//                    duration: Duration(
//                      seconds: 4
//                    ),
//
//                  ),
//                );
//              },
//            ),
//          );
//        },
//      ),
//    );
//  }
//}

//class MyBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Center(
//        child: RaisedButton(
//          child: Text("Click me"),
//          onPressed: () => Scaffold.of(context).showSnackBar(
//            SnackBar(
//              content: Text("You clicked me"),
//              duration: Duration(seconds: 3),
//            )
//          ),
//        ),
//      ),
//    );
//  }
//}

//class MyBody extends StatelessWidget {
//
//  AlertDialog dialog=AlertDialog(
//    content: Text("Yes Please.",),
//    title: Text("Hello"),
//
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Center(
//        child: RaisedButton(
//          child: Text("Press me Hard"),
//          onPressed: ()=> showDialog(context: context, child: dialog),
//        ),
//      )
//    );
//  }
//}