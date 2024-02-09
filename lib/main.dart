// import 'package:calculator_app/app.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const App(),
//   );
// }

import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/app.dart';

void main() {
  runApp(
    const App(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const CalculatorScreen();
        },
      },
    ),
  );
}

