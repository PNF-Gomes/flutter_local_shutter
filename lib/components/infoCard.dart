import 'package:flutter/material.dart';
import 'package:local_shutter_flutter/constants.dart';

class InfoCard extends StatelessWidget {
  InfoCard({this.text, this.icon});

  String text;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kFirstColor
      ),
      child: Center(
        child: Row(
          children: [
            icon,
            SizedBox(width: 20,),
            Text(text,
              style: kInfoCardText,)
          ],
        ),
      ),

    );
  }
}
