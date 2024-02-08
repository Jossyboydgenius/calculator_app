import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: CalculatorScreen(),
    );
  }

 