import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePageCard extends StatelessWidget {
  HomePageCard({this.text, this.BackgroundImage, this.cardColor, this.function});
  
  Color cardColor;
  String BackgroundImage;
  String text;
  Function function;
  
  
    

  @override
  Widget build(BuildContext context) {
    return Stack(
      children : [ GestureDetector(
        onTap: (){
          function();
        },

             child: Container(

              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cardColor,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.green.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage(
                      BackgroundImage,
                    ),
                    fit: BoxFit.cover,
                  )),



        ),

      ),
      Center(
        child: Container(

          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      )],
    );
  }
}
