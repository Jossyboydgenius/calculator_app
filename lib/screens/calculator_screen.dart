// import 'package:flutter/material.dart';

// class CalculatorScreen extends StatefulWidget {
//   const CalculatorScreen({
//     super.key,
//   });

//   @override
//   State<CalculatorScreen> createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Text(
//               'Calculator app test',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// // SafeArea -> Column -> [Text, Text, [Row -> [CustomButton]]]

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Calculator app test',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
