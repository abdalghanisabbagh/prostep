
import 'package:flutter/material.dart';
import 'package:prostep1/screens/resources/fonts_manger.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//regular
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.regular, color);
}

//medium
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.medium, color);
}

//bold
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.bold, color);
}

//semibold
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.semibold, color);
}

//light
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.light, color);
}
