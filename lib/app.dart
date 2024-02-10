import 'package:flutter/material.dart';
import 'package:calculator_app/screens/calculator_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Noto'
      ),
      home: const CalculatorScreen(),
    );
  }
}
