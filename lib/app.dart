// // import 'package:flutter/material.dart';

// // class App extends StatefulWidget {
// //   const App({
// //     super.key,
// //   });

// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Calculator App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: const Scaffold(),
// //     );
// //   }
// // }

// import 'package:calculator_app/screens/calculator_screen.dart';
// import 'package:flutter/material.dart';

// class AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Calculator App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Scaffold(),
//     );
//   }
// }

// class App extends StatefulWidget {
//   const App({
//     Key? key, required String initialRoute, required Map<String, CalculatorScreen Function(dynamic context)> routes,
//   }) : super(
//           key: key,
//         );

//   @override
//   AppState createState() => AppState();
// }


import 'package:flutter/material.dart';
import 'package:calculator_app/screens/calculator_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorScreen(),
    );
  }
}
