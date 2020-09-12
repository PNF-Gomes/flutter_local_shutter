import 'package:flutter/material.dart';
import 'package:local_shutter_flutter/components/homePageCard.dart';


class HomeScreen extends StatefulWidget {
  static const String id  = 'homeScreen';
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: HomePageCard(text: 'Meteo', backgroundImage: 'images/meteo.jpg',),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: HomePageCard(text: 'Pagamentos',backgroundImage: 'images/qr.jpg',),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: HomePageCard(text: 'Posição dos autocarros', backgroundImage: 'images/bus_tracker.jpeg',)),
          SizedBox(height: 10,),
          Expanded(child: HomePageCard(text: 'Horarios',backgroundImage: 'images/horarios.jpg',),),
          SizedBox(height: 10),
        ],
      ),
    ));
  }
}



