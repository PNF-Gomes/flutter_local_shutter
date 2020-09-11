import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:local_shutter_flutter/screens/homeScreen.dart';
import 'package:local_shutter_flutter/screens/mapScreen.dart';
import 'package:local_shutter_flutter/screens/infoScreen.dart';
class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  static  List<Widget> _pages = <Widget>[
    HomeScreen(),
    MapScreen(),
    InfoScreen(),




  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Container(

          ),
        ),
      ),
    );
  }
}


