import 'package:flutter/material.dart';
import 'package:local_shutter_flutter/screens/homeScreen.dart';
import 'package:local_shutter_flutter/screens/infoScreen.dart';
import 'screens/welcomeScreen.dart';
import 'screens/mapScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        InfoScreen.id : (context) => InfoScreen(),
        MapScreen.id : (context) => MapScreen(),
        HomeScreen.id : (context) => HomeScreen(),

      },
    );
  }
}

