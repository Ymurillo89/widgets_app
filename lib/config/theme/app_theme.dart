import 'package:flutter/material.dart';

const colorLists = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selctedColor;

  AppTheme({this.selctedColor = 0}) : assert(selctedColor >= 0 && selctedColor < colorLists.length);

  ThemeData getTheme() => ThemeData(useMaterial3: true, colorSchemeSeed: colorLists[selctedColor],appBarTheme: const AppBarTheme(centerTitle: false));
}
