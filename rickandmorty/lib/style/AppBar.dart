import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

//@Copyright PauloMasonSkyDark

Widget appBarStyle({
  String title,
  Color colorTheme,
  Color background,
  TextStyle textStyle,
  bool titleCenter,
  bool arrow = false,
  bool titleNeon = false,
  context,
}) {
  return AppBar(
    leadingWidth: 1,
    iconTheme: colorTheme ?? new IconThemeData(color: Colors.white),
    centerTitle: titleCenter ?? false,
    leading: arrow
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: Navigator.of(context).pop)
        : null,
    title: titleNeon
        ? Neon(
            text: title ?? 'Exemplo',
            color: Colors.blue,
            fontSize: 30,
            font: NeonFont.Samarin,
            flickeringText: true,
            glowing: true,
          )
        : Text(
            title ?? 'Exemplo',
            style: textStyle ??
                TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Principal'),
          ),
    backgroundColor: background ?? Colors.red,
    elevation: 0,
  );
}
//@Copyright PauloMasonSkyDark
