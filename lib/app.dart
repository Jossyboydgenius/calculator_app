import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
 
 class App extends StatefulWidget {
  const App({
    super.key,
  });

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: CalculatorScreen (),
    );
  }

 