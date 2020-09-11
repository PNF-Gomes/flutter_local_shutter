import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:local_shutter_flutter/components/infoCard.dart';


class InfoScreen extends StatelessWidget {
  const InfoScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          InfoCard(text: 'Covilhã tem nova aplicação para mobilidade', icon: Icon(Icons.airport_shuttle, color: Colors.yellowAccent,),),
          InfoCard(text: 'Ubi abre curso de fotografia nua', icon: Icon(Icons.party_mode, color: Colors.yellowAccent,),),
          InfoCard(text: 'Autocarros ficaram sem gasolina', icon: Icon(Icons.stop, color: Colors.yellowAccent,),),
          InfoCard(text: 'Interdito dizer "shotgun" no bus' , icon: Icon(Icons.report_problem, color: Colors.yellowAccent,),),
          InfoCard(text: 'Amalia afinal nasceu no fundao', icon: Icon(Icons.music_note, color: Colors.yellowAccent,),),

        ],
      ),
    );
  }
}
