import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle styleFontForm({Color color, FontWeight fontWeight, double fontSize}) {
  return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? Colors.black54,
      fontSize: fontSize ?? 0);
}

CircleAvatar alive = CircleAvatar(
  radius: 8,
  backgroundColor: Colors.green,
);
CircleAvatar dead = CircleAvatar(
  radius: 8,
  backgroundColor: Colors.red,
);

TextStyle gp24 = TextStyle(
  color: Colors.grey,
  fontFamily: "Poppins",
  fontSize: 22,
  fontWeight: FontWeight.w400,
);
TextStyle wp24 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 22,
  fontWeight: FontWeight.w400,
);
TextStyle bp24 = TextStyle(
  color: Colors.black,
  fontFamily: "Poppins",
  fontSize: 22,
  fontWeight: FontWeight.w400,
);

TextStyle wp14 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

TextStyle detailName = TextStyle(
  fontFamily: "Product-Sans",
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

TextStyle originText = TextStyle(
  color: Color(0xFF929293),
  fontFamily: "Product-Sans",
  fontSize: 17,
  fontWeight: FontWeight.w700,
);

TextStyle originName = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 12,
  fontWeight: FontWeight.w200,
);
