import 'package:calculadora_pisos/core/theme_app.dart';
import 'package:calculadora_pisos/pages/calculator_page.dart';
import 'package:flutter/material.dart';
import 'core/constantes.dart';
import 'pages/calculator_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      theme: kAppTheme,
      home: CalculatorPage(),
    );
  }
}
