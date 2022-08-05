import 'package:flutter/material.dart';

LinearGradient gradientBase(List<Color> colorList){
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // stops: [0.05, 0.35, 0.50, 0.60, 0.80],
    colors: colorList,
  );
}

var primaryGradient=gradientBase([
  Color.fromRGBO(197, 154, 120, 1),
  Color.fromRGBO(141, 90, 49, 1),
]);

var primaryColor=Color.fromRGBO(141, 90, 49, 1);
var secondaryColor=Colors.blueGrey;
var backgroundColor=Color.fromRGBO(245, 245, 245, 1);
var headingColor=Color.fromRGBO(137, 123, 115, 1);
var contentColor=Color.fromRGBO(176, 176, 176, 1);


height(context)=>MediaQuery.of(context).size.height/100;
width(context)=>MediaQuery.of(context).size.width/100;