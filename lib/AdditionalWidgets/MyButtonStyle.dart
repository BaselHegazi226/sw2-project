import 'package:flutter/material.dart';

class MyButtonStyle {
  ButtonStyle getStyle(
      {
        double fontSize = 30,
        Color backgroundColor = Colors.white,
        Color shadowColor = Colors.white,
        Color borderSideColor = Colors.white,

      }) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: const Color(0xff1E3441),
      shadowColor: shadowColor,//white38
      elevation: 10,
      side: BorderSide(
        color: borderSideColor,
        width: 3,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
