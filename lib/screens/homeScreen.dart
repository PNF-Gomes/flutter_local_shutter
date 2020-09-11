import 'package:flutter/material.dart';
import 'package:local_shutter_flutter/components/homePageCard.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

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
                  child: HomePageCard(text: 'Meteo', BackgroundImage: 'images/meteo.jpg',),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: HomePageCard(text: 'Pagamentos',BackgroundImage: 'images/qr.jpg',),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: HomePageCard(text: 'Posição dos autocarros', BackgroundImage: 'images/bus_tracker.jpeg',)),
          SizedBox(height: 10,),
          Expanded(child: HomePageCard(text: 'Horarios',BackgroundImage: 'images/horarios.jpg',),),
          SizedBox(height: 10),
        ],
      ),
    ));
  }
}



