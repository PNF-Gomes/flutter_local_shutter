
//TODO codigo modelo, refazer tudo



import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:local_shutter_flutter/constants.dart';
import 'package:local_shutter_flutter/screens/welcomeScreen.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ShutterKeeperScreen extends StatefulWidget {
  static const String  id = 'shutterKeeper';
  @override
  _ShutterKeeperScreenState createState() => _ShutterKeeperScreenState();
}

class _ShutterKeeperScreenState extends State<ShutterKeeperScreen> {
  List <Widget> timeLineTiles = [
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.purple,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rodrigo',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 20 min')
          ],
        ),
      ),

    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.grey,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mateus Fernandes',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 15 min')
          ],
        ),
      ),

    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.grey,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Penedos Altos',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 12 min')
          ],
        ),
      ),
    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
          color: Colors.green,
          width: 50,
          iconStyle: IconStyle(
              iconData: Icons.airport_shuttle,
              color: Colors.yellow,
              fontSize: 25
          )

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rua Da Calva',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 0 min')
          ],
        ),
      ),
    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.grey,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('S.Catarina',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 5 min')
          ],
        ),
      ),
    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.grey,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('S.Catarina',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 5 min')
          ],
        ),
      ),
    ),
    TimelineTile(
      isFirst: false,
      alignment: TimelineAlign.left,
      indicatorStyle: IndicatorStyle(
        color: Colors.grey,
        width: 50,

      ),
      rightChild: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(top: 60, left: 20),
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('S.Catarina',
              style: TextStyle(
                  fontSize: 20
              ),),
            Text('Proximo autocarro: 5 min')
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, WelcomeScreen.id);
        },
        backgroundColor: kFirstColor,
        child: Icon(
          Icons.home,

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: ListView(

          children: timeLineTiles,
        ),
      ),
    );

  }
}
