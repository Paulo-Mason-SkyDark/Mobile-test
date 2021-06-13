import 'package:flutter/material.dart';
import 'package:rickandmorty/style/TableImage.dart';

class StyleScreenPattern extends StatelessWidget {
  StyleScreenPattern({this.child});

  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(rickAndMorty),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
