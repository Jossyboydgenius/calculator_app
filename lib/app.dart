// import 'package:flutter/material.dart';
// class App extends StatefulWidget {
//   const App({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
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


import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(),
    );
  }
}
