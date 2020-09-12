import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:local_shutter_flutter/constants.dart';

class HomePageCard extends StatelessWidget {
  HomePageCard(
      {this.text, this.backgroundImage, this.cardColor, this.function});

  Color cardColor;
  String backgroundImage;
  String text;
  Function function;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            function();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: cardColor,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      kFirstColor.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage(
                    backgroundImage,
                  ),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Center(
          child: Container(
            child: Text(
              text,
              style: kHomeCardText,
            ),
          ),
        )
      ],
    );
  }
}
