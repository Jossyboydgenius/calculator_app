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
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            Text(
              '2000',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text(
              '300',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              children: [CustomButton()],
            ),
          ],
        ),
      ),
    );
  }
}

// SafeArea -> Column -> [Text, Text, [Row -> [CustomButton]]]
class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        '1',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
