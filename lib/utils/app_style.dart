import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class Styles{
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color orangeColor = const Color.fromRGBO(243, 123, 103, 1);
  static TextStyle textStyle =  TextStyle(fontSize: 16,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17,fontWeight: FontWeight.w500);
  // static TextStyle headLineStyle3 = TextStyle(fontSize: 17,color: Colors.grey.shade500,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14,color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}