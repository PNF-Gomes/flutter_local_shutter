import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:local_shutter_flutter/screens/homeScreen.dart';
import 'package:local_shutter_flutter/screens/mapScreen.dart';
import 'package:local_shutter_flutter/screens/infoScreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  int _pageIndex = 1;

  //pages that will appear on the navbar
  static List<Widget> _pages = <Widget>[
    InfoScreen(),
    HomeScreen(),
    MapScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: _pages.elementAt(_pageIndex ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                duration: Duration(seconds: 1),

                tabBackgroundColor: Colors.grey,

                tabs: [
                  GButton(
                    icon: Icons.info,
                    text: 'info',

                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                  ),
                  GButton(
                    icon: Icons.airport_shuttle,
                    text: 'mapa',
                  ),

                ],
                selectedIndex: _pageIndex,
                onTabChange: (index){
                  setState(() {
                    _pageIndex = index;

                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
