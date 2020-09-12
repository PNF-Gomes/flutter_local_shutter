import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:local_shutter_flutter/screens/homeTabs/homeScreen.dart';
import 'package:local_shutter_flutter/screens/homeTabs/mapScreen.dart';
import 'package:local_shutter_flutter/screens/homeTabs/infoScreen.dart';
import 'package:local_shutter_flutter/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';
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
    //HomeScreen()

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
                activeColor: kSecondColors,
                iconSize: 24,
                duration: Duration(seconds: 1),

                tabBackgroundColor: kFirstColor,

                tabs: [
                  GButton(
                    icon: Icons.info,
                    text: 'info',
                    iconColor: kFirstColor,

                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                    textColor: kSecondColors,
                    iconColor: kFirstColor,
                  ),
                  GButton(
                    icon: Icons.airport_shuttle,
                    text: 'mapa',
                    iconColor: kFirstColor,
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
