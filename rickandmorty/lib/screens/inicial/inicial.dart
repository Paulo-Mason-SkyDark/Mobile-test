import 'package:flutter/material.dart';
import 'package:rickandmorty/screens/home/Home_page.dart';
import 'package:rickandmorty/style/TableImage.dart';
import 'package:splashscreen/splashscreen.dart';

class InicialScreen extends StatefulWidget {
  @override
  _InicialScreenState createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 4,
          navigateAfterSeconds: HomePage(),
          loaderColor: Colors.white,
        ),
        Container(
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(rickAndMorty_2),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
