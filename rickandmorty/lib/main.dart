import 'package:flutter/material.dart';
import 'package:rickandmorty/screens/inicial/inicial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick & Morty',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: InicialScreen(),
    );
  }
}
