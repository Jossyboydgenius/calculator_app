// import 'package:flutter/material.dart';

// class App extends StatefulWidget {
//   const App({
//     super.key,
//   });

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

class AppState extends State<App> {
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

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  AppState createState() => AppState();
}
