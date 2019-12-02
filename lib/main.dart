import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './garden.dart';
import './settings.dart';
import './create_plant.dart';

//---------------Stuff-----------------
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'My garden'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int _page = 0;

// ----------------------------------- MAIN---------------------------------------
class _MyHomePageState extends State<MyHomePage> {
  //----------------Vars-------------
  static int _counter = 0;

  // content of the pages
  var condts = {
    0: Garden(_page),
    1: Center(
      child: Column(
        children: <Widget>[
          Garden(_counter),
          Garden(_page),
        ],
      ),
    ),
    2: Garden(_page),
    3: Settings(_page),
    4: CreatePlant(_page),
  };
  void _incrementCounter() {
    setState(() {
            _page = 4;
          });
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if(_page==1){ // if in garden, show floating button
      child = FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      );
    } else child=null;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Center(
              child: Text(
            widget.title + "$_page",
          )),
        ),
      ),
      body: condts[_page],
      floatingActionButton: child,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.green,
        height: 60,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        items: <Widget>[
          
          Icon(Icons.home, size: 32, color: Colors.white),
          Icon(Icons.local_florist, size: 32, color: Colors.white),
          Icon(Icons.notifications, size: 32, color: Colors.white),
          Icon(Icons.settings, size: 32, color: Colors.white),
        ],
        onTap: (index) {
          debugPrint("Current index is $index");
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
