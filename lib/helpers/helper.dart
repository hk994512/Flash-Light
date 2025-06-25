import 'package:flutter/cupertino.dart';

class Helper {
  static appText(
    String text, {
    Color color = const Color(0xff000000),
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static appImage(String imageText, {Color color = const Color(0xffFFFFFF)}) {
    return Image.asset(imageText, fit: BoxFit.cover, color: color);
  }
}
