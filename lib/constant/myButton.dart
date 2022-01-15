import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';


class MyButton extends StatelessWidget {
  MyButton({Key? key,
    required this.text
  }) : super(key: key);
  String text;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: 170,
        decoration: BoxDecoration(
          color: constant.kPurple,
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                constant.kDarkPurple,
                constant.kPurple,
              ]

          ),

        ),
        child:Center(child:
        Text(text, style: TextStyle(fontSize: 20,color: Colors.white),))
    );
  }
}