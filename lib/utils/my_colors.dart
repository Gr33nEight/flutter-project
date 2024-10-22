import 'package:flutter/material.dart';

class MyColors {
  static final blackColor = HexColor('#0E0E0E');
  static final whiteColor = HexColor('#FFFFFF');
  static final purpleColor = HexColor('#471AA0');
  static final pinkColor = HexColor('#9747FF');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if(hexColor.length == 6){
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}