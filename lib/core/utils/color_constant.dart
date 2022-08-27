import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green500 = fromHex('#55ab60');

  static Color teal4001a = fromHex('#1a3c88aa');

  static Color green30099 = fromHex('#9974ca82');

  static Color gray600 = fromHex('#828282');

  static Color gray601 = fromHex('#6e6e6e');

  static Color gray400 = fromHex('#b3b3b3');

  static Color lime500 = fromHex('#c4e538');

  static Color gray802 = fromHex('#4b4b4b');

  static Color gray604 = fromHex('#6f6f6f');

  static Color gray800 = fromHex('#424242');

  static Color gray602 = fromHex('#7e7e7e');

  static Color gray603 = fromHex('#787878');

  static Color gray801 = fromHex('#434343');

  static Color black9000f = fromHex('#0f000000');

  static Color black9000c = fromHex('#0c000000');

  static Color bluegray401 = fromHex('#898989');

  static Color bluegray400 = fromHex('#888888');

  static Color lime50 = fromHex('#f9ffda');

  static Color cyan50 = fromHex('#caf5ff');

  static Color gray300D8 = fromHex('#d8dfdfdf');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange50 = fromHex('#ffebe5');

  static Color gray50 = fromHex('#f9f9f9');

  static Color red50 = fromHex('#fff2f0');

  static Color teal400 = fromHex('#3e899a');

  static Color teal401 = fromHex('#3f8a9a');

  static Color black900 = fromHex('#000000');

  static Color gray50087 = fromHex('#879b9b9b');

  static Color black90063 = fromHex('#63000000');

  static Color black901 = fromHex('#040404');

  static Color gray501 = fromHex('#9a9a9a');

  static Color indigoA20033 = fromHex('#334871e3');

  static Color gray700 = fromHex('#5e5e5e');

  static Color gray502 = fromHex('#8f8f8f');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color gray103 = fromHex('#f4f4f4');

  static Color gray500 = fromHex('#9b9b9b');

  static Color gray901 = fromHex('#14171f');

  static Color gray703 = fromHex('#5c5c5c');

  static Color gray902 = fromHex('#1a1a1a');

  static Color gray701 = fromHex('#646464');

  static Color gray503 = fromHex('#929292');

  static Color gray900 = fromHex('#14171e');

  static Color gray702 = fromHex('#616161');

  static Color bluegray100 = fromHex('#cfcfcf');

  static Color lightBlue50 = fromHex('#eafbff');

  static Color gray101 = fromHex('#f5f5f5');

  static Color green50 = fromHex('#dcffe2');

  static Color gray300 = fromHex('#e8e8e3');

  static Color gray102 = fromHex('#f2fff4');

  static Color gray100 = fromHex('#f2fcf4');

  static Color bluegray900 = fromHex('#263238');

  static Color orange50 = fromHex('#ffedd7');

  static Color bluegray101 = fromHex('#d3d3d3');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
